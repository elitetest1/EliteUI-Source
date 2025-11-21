.class public Lcom/android/internal/logging/testing/UiEventLoggerFake;
.super Ljava/lang/Object;
.source "UiEventLoggerFake.java"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;
    }
.end annotation


# instance fields
.field private blacklist mLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake;->mLogs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public blacklist eventId(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake;->mLogs:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;

    iget p0, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;->eventId:I

    return p0
.end method

.method public blacklist get(I)Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake;->mLogs:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;

    return-object p0
.end method

.method public blacklist getLogs()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake;->mLogs:Ljava/util/List;

    return-object p0
.end method

.method public blacklist log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/logging/testing/UiEventLoggerFake;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    return-void
.end method

.method public blacklist log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V
    .locals 1

    invoke-interface {p1}, Lcom/android/internal/logging/UiEventLogger$UiEventEnum;->getId()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p0, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake;->mLogs:Ljava/util/List;

    new-instance v0, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;-><init>(IILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public blacklist log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/internal/logging/InstanceId;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/internal/logging/testing/UiEventLoggerFake;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    return-void
.end method

.method public blacklist logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V
    .locals 1

    invoke-interface {p1}, Lcom/android/internal/logging/UiEventLogger$UiEventEnum;->getId()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p0, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake;->mLogs:Ljava/util/List;

    new-instance v0, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;-><init>(IILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public blacklist logWithInstanceIdAndPosition(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;I)V
    .locals 1

    invoke-interface {p1}, Lcom/android/internal/logging/UiEventLogger$UiEventEnum;->getId()I

    move-result p1

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake;->mLogs:Ljava/util/List;

    new-instance p0, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;-><init>(IILjava/lang/String;Lcom/android/internal/logging/InstanceId;I)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public blacklist logWithPosition(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;I)V
    .locals 6

    invoke-interface {p1}, Lcom/android/internal/logging/UiEventLogger$UiEventEnum;->getId()I

    move-result v1

    if-lez v1, :cond_0

    iget-object p0, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake;->mLogs:Ljava/util/List;

    new-instance v0, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;

    const/4 v4, 0x0

    move v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;-><init>(IILjava/lang/String;Lcom/android/internal/logging/InstanceId;I)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public blacklist numLogs()I
    .locals 0

    iget-object p0, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake;->mLogs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
