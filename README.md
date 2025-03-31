# luckyday-server

> **행운이 가득한 하루, 클로버로 이어지는 SNS**
> **SNS 풀스택 프로젝트 `luckyday`의 통합 레포지토리입니다.**  
> React + Spring Boot + Docker + GitHub Actions 기반으로 개발되었습니다.

---

## 프로젝트 개요

**luckyday**는  
하루에 하나, 나만의 클로버를 남겨 소통하고, 응원하고, 행운을 주고받는 
**가볍고 직관적인 SNS 서비스**입니다.

- **프로젝트명**: luckyday
- **설명**: 클로버처럼 간결한 SNS, 글과 댓글로 소통하고 알림으로 이어지는 하루
- **개발 기간**: 2025.03 ~ 
- **기여도**: 100% (기획, 개발, 배포)
- **목표**: 글·댓글·좋아요·알림까지 포함된 **풀스택 SNS 서비스 직접 구현**

---

## 기술 스택

| 구분 | 사용 기술 |
|------|------------|
| Frontend | React, styled-components, Axios |
| Backend | Spring Boot, JPA, Spring Security, JWT |
| DB | MySQL |
| Infra | Docker, GitHub Actions, EC2, SSH, Nginx |
| 기타 | 서브모듈, CI/CD 자동 배포, 무중단 배포, JWT 토큰 갱신 |

---

## 프로젝트 구조

```bash
luckyday-server/
├── luckyday-backend/     # Spring Boot 백엔드 (Git Submodule)
├── luckyday-frontend/    # React 프론트엔드 (Git Submodule)
├── .github/workflows/    # GitHub Actions CI/CD
├── docker-compose.yml
└── deploy.sh             # 서버 자동 배포 스크립트
```

---

## 주요 기능
- 유저 회원가입 / 로그인 (JWT 인증)

- 프로필 / 수정 / 이미지 업로드

- 팔로우 / 팔로워

- 클로버(게시글) 등록 / 삭제 / 댓글 / 좋아요 / 이미지 업로드

- 사용자 검색 / 클로버(게시글) 검색

- 알림 시스템 (댓글 / 좋아요 / 팔로우)

- JWT 토큰 인증 / 자동 갱신

- CI/CD 자동 배포 / 무중단 Docker 재배포