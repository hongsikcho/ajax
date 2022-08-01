<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">

    <!-- 모바일에서 디자인이 축소되지 않게 하기 위한 코드 -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- 데이지UI 불러오기 -->
    <link href="https://cdn.jsdelivr.net/npm/daisyui@2.20.0/dist/full.css" rel="stylesheet" type="text/css" />

    <!-- 제이쿼리 불러오기 -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

    <!-- 폰트어썸 불러오기 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css" />

    <!-- 테일윈드 불러오기 -->
    <script src="https://cdn.tailwindcss.com"></script>

    <!-- 공통 CSS -->
    <style>
        @font-face {
            font-family: 'GmarketSansMedium';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }

        html > body {
            font-family: 'GmarketSansMedium';
            margin: 0;
        }

        .container{
            padding-bottom: 50px;
        }


    </style>
</head>

<body>

<header style="margin-bottom: 30px">
    <div style="display: flex;">
        <a href="/usr/article/list/free" class="mr-auto">로고</a>

        <ul style="display: flex;">
            <li style="margin-right: 10px">
                <a  href="/usr/chat/createRoom">채팅방 생성</a>
            </li>
            <li style="margin-right: 10px">
                <a  href="/usr/article/write/free">자유게시물 작성</a>
            </li>
            <li>
                <a  href="/usr/article/list">자유게시물 리스트</a>
            </li>
        </ul>
    </div>
</header>