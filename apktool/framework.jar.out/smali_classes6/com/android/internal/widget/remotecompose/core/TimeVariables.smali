.class public Lcom/android/internal/widget/remotecompose/core/TimeVariables;
.super Ljava/lang/Object;
.source "TimeVariables.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist updateTime(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 2

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-static {v0}, Ljava/time/LocalDateTime;->now(Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/TimeVariables;->updateTime(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Ljava/time/ZoneId;Ljava/time/LocalDateTime;)V

    return-void
.end method

.method public blacklist updateTime(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Ljava/time/ZoneId;Ljava/time/LocalDateTime;)V
    .locals 7

    invoke-virtual {p3}, Ljava/time/LocalDateTime;->getMonth()Ljava/time/Month;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/Month;->getValue()I

    move-result p0

    invoke-virtual {p3}, Ljava/time/LocalDateTime;->getHour()I

    move-result v0

    invoke-virtual {p3}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v1

    invoke-virtual {p3}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v2

    mul-int/lit8 v3, v0, 0x3c

    add-int/2addr v3, v1

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p3}, Ljava/time/LocalDateTime;->getNano()I

    move-result v2

    int-to-float v2, v2

    const v4, 0x3089705f    # 1.0E-9f

    mul-float/2addr v2, v4

    add-float/2addr v2, v1

    invoke-virtual {p3}, Ljava/time/LocalDateTime;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/DayOfWeek;->getValue()I

    move-result v4

    invoke-virtual {p3, p2}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p2

    invoke-virtual {p2}, Ljava/time/ZonedDateTime;->toOffsetDateTime()Ljava/time/OffsetDateTime;

    move-result-object p2

    invoke-virtual {p2}, Ljava/time/OffsetDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/time/LocalDateTime;->toEpochSecond(Ljava/time/ZoneOffset;)J

    move-result-wide v5

    invoke-virtual {p2}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result p2

    int-to-float p2, p2

    const/16 p3, 0xa

    invoke-virtual {p1, p3, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    const/16 p2, 0x20

    long-to-int p3, v5

    invoke-virtual {p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadInteger(II)V

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    const/4 p2, 0x3

    int-to-float p3, v3

    invoke-virtual {p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    const/4 p2, 0x4

    int-to-float p3, v0

    invoke-virtual {p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    int-to-float p0, p0

    const/16 p2, 0x9

    invoke-virtual {p1, p2, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    const/16 p2, 0xc

    invoke-virtual {p1, p2, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    const/16 p0, 0xb

    int-to-float p2, v4

    invoke-virtual {p1, p0, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getDocumentApiLevel()I

    move-result p0

    int-to-float p0, p0

    const/4 p2, 0x0

    add-float/2addr p0, p2

    const/16 p2, 0x1c

    invoke-virtual {p1, p2, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    return-void
.end method
