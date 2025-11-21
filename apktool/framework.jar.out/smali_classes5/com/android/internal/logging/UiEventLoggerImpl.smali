.class public Lcom/android/internal/logging/UiEventLoggerImpl;
.super Ljava/lang/Object;
.source "UiEventLoggerImpl.java"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/logging/UiEventLoggerImpl;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    return-void
.end method

.method public blacklist log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V
    .locals 1

    invoke-interface {p1}, Lcom/android/internal/logging/UiEventLogger$UiEventEnum;->getId()I

    move-result p0

    if-lez p0, :cond_0

    const/16 p1, 0x5a

    const/4 v0, 0x0

    invoke-static {p1, p0, p2, p3, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public blacklist log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/internal/logging/InstanceId;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/internal/logging/UiEventLoggerImpl;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    return-void
.end method

.method public blacklist logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V
    .locals 1

    invoke-interface {p1}, Lcom/android/internal/logging/UiEventLogger$UiEventEnum;->getId()I

    move-result v0

    if-lez v0, :cond_0

    if-eqz p4, :cond_0

    const/16 p0, 0x5a

    invoke-virtual {p4}, Lcom/android/internal/logging/InstanceId;->getId()I

    move-result p1

    invoke-static {p0, v0, p2, p3, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;I)V

    return-void

    :cond_0
    if-lez v0, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/logging/UiEventLoggerImpl;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public blacklist logWithInstanceIdAndPosition(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;I)V
    .locals 1

    move-object v0, p1

    invoke-interface {v0}, Lcom/android/internal/logging/UiEventLogger$UiEventEnum;->getId()I

    move-result p1

    if-lez p1, :cond_0

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/android/internal/logging/InstanceId;->getId()I

    move-result p0

    move p4, p5

    const/4 p5, 0x0

    move-object p2, p3

    move p3, p0

    const/16 p0, 0x104

    invoke-static/range {p0 .. p5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IIZ)V

    return-void

    :cond_0
    move-object p4, p3

    move p3, p1

    move-object p1, p4

    move p4, p5

    if-lez p3, :cond_1

    invoke-virtual {p0, v0, p2, p1, p4}, Lcom/android/internal/logging/UiEventLoggerImpl;->logWithPosition(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public blacklist logWithPosition(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;I)V
    .locals 6

    invoke-interface {p1}, Lcom/android/internal/logging/UiEventLogger$UiEventEnum;->getId()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v0, 0x104

    move-object v2, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IIZ)V

    :cond_0
    return-void
.end method
