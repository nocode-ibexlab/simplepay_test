package com.ibexlab.simple_pay_api.device.util;

import androidx.annotation.NonNull;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

/*
  [포맷 규격]

    수신된 문자열 중 사전에 정의된 기능 문자열( “<@” 로 시작)을 제외하고 모두 그대로 출력

  [기능 문자열]
    <@START>
	    프린트 시작을 알림. 시작 문자열 이전에 전달된 문자열은 무시됨

    <@END>
	    프린트 종료를 알림. 종료 문자열 이후에 전달된 문자열은 무시됨

    <@GSV>
	    프린트 용지 컷팅

    <@FONT A>
	    FONT C에 비해 가로/세로 2배 크고, 진하게

    <@FONT B>
        FONT C에 비해 가로로 2배 크고, 진하게 설정

    <@FONT C>
        이후 출력되는 문자열의 폰트를 12x24로 설정

    <@FONT D>
        FONT C에 비해 가로/세로 2배 큼

    <@ALIGN L n>
	    이후 출력되는 문자열을 왼쪽 정렬함
	    n은 한 줄에 여러 개의 ALIGN 이 존재할 경우 너비를 배분하는 weight
	    한 줄에 1, 4, 5의 값을 가진 ALIGN 이 있다면 10%, 40%, 50%의 비율로 너비를 차지함
	    n이 없을 경우 1로 처리

    <@ALIGN R n>
	    이후 출력되는 문자열을 오른쪽 정렬함

    <@ALIGN C n>
	    이후 출력되는 문자열을 중앙 정렬함

	<@DOTLINE>
	    한 행을 DOT Line 으로 채움

	<@OPENDRAWER>
	    금전함 열기. 오직 이 문자열만 포함하고 있어야 함

	<@IMAGE path>
        이미지 출력

  [사용 예]
        <@START><@FONT A><@ALIGN C>[IC거래 승인]
        - 영 수 증 -

        <@FONT C><@ALIGN L>상점명 : teststore-tmp
        대표자 : 주인장
        사업자번호 : 1168119948
        TID: 0700081
        전표 번호: 20170322100011
        주소: Daerung Techno Town 3 Cha, 70, Gamasan-ro, Geumcheon-gu, Seoul, Korea
        <@DOTLINE>
        <@ALIGN L>카드번호:<@ALIGN R>552576******6967
        <@ALIGN L>할부개월:<@ALIGN R>0
        <@ALIGN L>발급사:<@ALIGN R>롯데카드
        <@ALIGN L>승인일시:<@ALIGN R>1703220745184
        <@DOTLINE>
        <@ALIGN L>거래금액:<@ALIGN R>50,000
        <@ALIGN L>세금:<@ALIGN R>0
        <@ALIGN L>봉사료:<@ALIGN R>0
        <@ALIGN L>총 금액:<@ALIGN R>50,000
        <@DOTLINE>
        <@ALIGN L>승인번호: :<@ALIGN R>79045184
        <@ALIGN L>매입사::<@ALIGN R>롯데카드사
        <@ALIGN L>메시지: <@ALIGN R>KICC로 제출테스트 거래임

        <@GSV><@START><@FONT A><@ALIGN C>[IC거래 승인]
        - 가맹점용 -

        <@FONT C><@ALIGN L>상점명 : teststore-tmp\n
        대표자 : 주인장
        사업자번호 : 1168119948
        TID: 0700081
        전표 번호: 20170322100011
        주소: Daerung Techno Town 3 Cha, 70, Gamasan-ro, Geumcheon-gu, Seoul, Korea
        <@DOTLINE>
        <@ALIGN L>카드번호:<@ALIGN R>552576******6967
        <@ALIGN L>할부개월:<@ALIGN R>0
        <@ALIGN L>발급사:<@ALIGN R>롯데카드
        <@ALIGN L>승인일시:<@ALIGN R>1703220745184
        <@DOTLINE>
        <@ALIGN L>거래금액:<@ALIGN R>50,000
        <@ALIGN L>세금:<@ALIGN R>0
        <@ALIGN L>봉사료:<@ALIGN R>0
        <@ALIGN L>총 금액:<@ALIGN R>50,000
        <@DOTLINE>
        <@ALIGN L>승인번호:<@ALIGN R>79045184
        <@ALIGN L>매입사:<@ALIGN R>롯데카드사
        <@ALIGN L>메시지:<@ALIGN R>KICC로 제출테스트 거래임
        <@END>
 */
class PrintFormat {
    static final int TYPE_TEXT = 0;
    private static final int TYPE_START = 1;
    private static final int TYPE_END = 2;
    static final int TYPE_GSV = 3;
    static final int TYPE_FONT = 4;
    static final int TYPE_ALIGN = 5;
    static final int TYPE_DOT_LINE = 6;
    static final int TYPE_IMAGE = 7;
    static final int TYPE_QR = 8;

    static final int ALIGN_LEFT = 0;
    static final int ALIGN_RIGHT = 1;
    static final int ALIGN_CENTER = 2;

    static final int FONT_A = 0;
    static final int FONT_B = 1;
    static final int FONT_C = 2;
    static final int FONT_D = 3;
    static final int FONT_E = 4;

    static final int SIZE_FONT_C = 12;
    private static final String DOT_LINE = "-";
    static final Node NODE_FONT_C = new Node(TYPE_FONT, "C");
    static final Node NODE_ALIGN_LEFT = new Node(TYPE_ALIGN, "L");

    int paperSize = 48 * SIZE_FONT_C;

    public void setPaperSize(int maxChar) {
        this.paperSize = maxChar * SIZE_FONT_C;
    }

    Page createPage(String text) {
        text = removeNonBreakingSpace(text);
        Page page = parse(text.split("\n"));
        return prepare(page);
    }

    private String removeNonBreakingSpace(String text) {
        return text.replace("\u00A0", " ");
    }

    /*
        템플릿 텍스트를 노드 페이지로 파싱함
     */
    private Page parse(String[] lines) {
        Page page = new Page();
        StringBuilder sb = new StringBuilder();
        int state = 0;

        for (String l : lines) {
            Line line = new Line();

            for (int i = 0; i < l.length(); i++) {
                char c = l.charAt(i);

                switch (state) {
                    case 0:
                        if (c == '<') {
                            state = 1;
                        } else {
                            sb.append(c);
                        }
                        break;
                    case 1:
                        if (c == '@') {
                            state = 2;
                            line.add(createTextNode(sb.toString()));
                            sb.setLength(0);
                        } else {
                            state = 0;
                            sb.append('<').append(c);
                        }
                        break;
                    case 2:
                        if (c == '>') {
                            state = 0;
                            Node node = createCommandNode(sb.toString());
                            sb.setLength(0);

                            if (node != null) {
                                line.add(node);
                            }
                        } else {
                            sb.append(c);
                        }
                        break;
                }
            }

            switch (state) {
                case 1:
                    sb.append('<');
                    break;
                case 2:
                    sb.insert(0, "<@");
                    break;
            }

            line.add(createTextNode(sb.toString()));
            sb.setLength(0);

            // 빈줄인 경우 빈줄 유지하게 함
            if (!line.hasNode()) {
                line.add(createTextNode(" "));
            }

            page.add(line);
        }

        return page;
    }

    Node createTextNode(String text) {
        if (text.isEmpty()) {
            return null;
        }

        return new Node(TYPE_TEXT, text);
    }

    private Node createCommandNode(String text) {
        String[] tok = text.split("\\s+", 2);

        if (tok.length > 0) {
            int type = -1;

            switch (tok[0].toUpperCase()) {
                case "START":
                    type = TYPE_START;
                    break;
                case "END":
                    type = TYPE_END;
                    break;
                case "GSV":
                    type = TYPE_GSV;
                    break;
                case "FONT":
                    type = TYPE_FONT;
                    break;
                case "ALIGN":
                    type = TYPE_ALIGN;
                    break;
                case "DOTLINE":
                    type = TYPE_DOT_LINE;
                    break;
                case "IMAGE":
                    type = TYPE_IMAGE;
                    break;
                case "QR":
                    type = TYPE_QR;
                    break;

            }

            if (type != -1) {
                Node node = new Node(type);

                if (tok.length > 1) {
                    node.setData(tok[1]);
                }

                return node;
            }
        }

        return null;
    }

    Line createDotLine() {
        Line line = new Line();
        line.add(NODE_FONT_C);
        line.add(repeatedText(paperSize / SIZE_FONT_C, DOT_LINE));
        return line;
    }

    /*
        START/END 사이의 내용만 가져옴
        GSV/DOT LINE 인 경우 새로운 줄에서 처리하게 함
     */
    private Page prepare(Page lines) {
        boolean ready = false;
        Page page = new Page();

        for (Line l : lines) {
            Line line = new Line();

            for (Node node : l) {
                switch (node.getType()) {
                    case TYPE_START:
                        ready = true;
                        break;
                    case TYPE_END:
                        ready = false;
                        break;
                    case TYPE_GSV:
                    case TYPE_DOT_LINE:
                        if (ready) {
                            if (line.hasNode()) {
                                page.add(line);
                                line = new Line();
                            }

                            line.add(node);
                            page.add(line);
                            line = new Line();
                        }
                        break;
                    default:
                        if (ready) {
                            line.add(node);
                        }
                        break;
                }
            }

            page.add(line);
        }

        return page;
    }

    int getAlignment(Node data) {
        String[] tok = data.getData().toUpperCase().split("\\s+");

        if (tok.length == 0) {
            return ALIGN_LEFT;
        }

        switch (tok[0]) {
            case "R":
                return ALIGN_RIGHT;
            case "C":
                return ALIGN_CENTER;
            case "L":
            default:
                return ALIGN_LEFT;
        }
    }

    int getFont(Node data) {
        switch (data.getData().toUpperCase()) {
            case "A":
                return FONT_A;
            case "B":
                return FONT_B;
            case "D":
                return FONT_D;
            case "E":
                return FONT_E;
            case "C":
            default:
                return FONT_C;
        }
    }

    Node repeatedText(int count) {
        return repeatedText(count, " ");
    }

    private Node repeatedText(int count, String text) {
        return createTextNode(new String(new char[count]).replace("\0", text));
    }

    float[] getColumnWidth(List<Line> columns) {
        float[] width = new float[columns.size()];
        int sum = 0;

        for (int i = 0; i < columns.size(); i++) {
            for (Node node : columns.get(i)) {
                if (node.getType() == TYPE_ALIGN) {
                    String[] tok = node.getData().split("\\s+");
                    int w = 1;

                    if (tok.length > 1) {
                        try {
                            w = Integer.parseInt(tok[1]);
                        } catch (NumberFormatException ignored) {
                        }
                    }

                    width[i] = w;
                    sum += w;
                    break;
                }
            }
        }

        for (int i = 0; i < width.length; i++) {
            width[i] = width[i] / sum * paperSize;
        }

        return width;
    }

    /*
    파싱된 최소 요소
    - type: 노드 타입 (TYPE_TEXT, TYPE_START, TYPE_END, TYPE_GSV ...)
    - data: 노드 데이터( TYPE_TEXT 인 경우 스트링, TYPE_FONT 인 경우 A, B, C 등 폰트 크기를 저장)
 */
    static class Node {
        private int type;
        private String data;

        Node(int type) {
            this.type = type;
        }

        Node(int type, String data) {
            this.type = type;
            this.data = data;
        }

        int getType() {
            return type;
        }

        @SuppressWarnings("unused")
        public void setType(int type) {
            this.type = type;
        }

        String getData() {
            return data;
        }

        void setData(String data) {
            this.data = data;
        }

        @Override
        public String toString() {
            return "Node{" +
                    "type=" + type +
                    ", data='" + data + "\'" +
                    "}";
        }
    }

    /*
        노드의 배열로 노드로 구성된 한 라인을 의미
     */
    static class Line implements Iterable<Node> {
        private final List<Node> line = new ArrayList<>();

        void add(Node node) {
            if (node != null) {
                line.add(node);
            }
        }

        void add(int index, Node node) {
            if (node != null) {
                line.add(index, node);
            }
        }

        void add(Line line) {
            if (line != null) {
                for (Node node : line) {
                    this.line.add(node);
                }
            }
        }

        boolean hasNode() {
            return line.size() > 0;
        }

        @Override
        @NonNull
        public Iterator<Node> iterator() {
            return new LineIterator();
        }

        @Override
        public String toString() {
            StringBuilder sb = new StringBuilder();

            for (Node node : line) {
                sb.append(node.toString()).append("\n");
            }

            return sb.toString();
        }

        private class LineIterator implements Iterator<Node> {
            private int index;

            LineIterator() {
                index = 0;
            }

            @Override
            public boolean hasNext() {
                return index < line.size();
            }

            @Override
            public Node next() {
                if (hasNext()) {
                    return line.get(index++);
                }

                throw new NoSuchElementException();
            }
        }
    }

    /*
        노드의 배열의 배열 또는 한 줄의 배열인 노드로 구성된 페이지를 의미
     */
    static class Page implements Iterable<Line> {
        private final List<Line> lines = new ArrayList<>();

        void add(Line node) {
            if (node.hasNode()) {
                lines.add(node);
            }
        }

        Line get(int index) {
            if (index < lines.size()) {
                return lines.get(index);
            }

            return null;
        }

        @Override
        @NonNull
        public Iterator<Line> iterator() {
            return new PageIterator();
        }

        @Override
        public String toString() {
            StringBuilder sb = new StringBuilder();

            for (int i = 0; i < lines.size(); i++) {
                sb.append("Line: ").append(i + 1).append("\n")
                        .append(lines.get(i).toString()).append("\n");
            }

            return sb.toString();
        }

        private class PageIterator implements Iterator<Line> {
            private int index;

            PageIterator() {
                index = 0;
            }

            @Override
            public boolean hasNext() {
                return index < lines.size();
            }

            @Override
            public Line next() {
                if (hasNext()) {
                    return lines.get(index++);
                }

                throw new NoSuchElementException();
            }
        }
    }
}