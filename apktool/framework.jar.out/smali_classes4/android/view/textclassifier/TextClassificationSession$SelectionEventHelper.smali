.class final Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;
.super Ljava/lang/Object;
.source "TextClassificationSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextClassificationSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SelectionEventHelper"
.end annotation


# instance fields
.field private final blacklist mContext:Landroid/view/textclassifier/TextClassificationContext;

.field private blacklist mInvocationMethod:I

.field private blacklist mPrevEvent:Landroid/view/textclassifier/SelectionEvent;

.field private final blacklist mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

.field private blacklist mSmartEvent:Landroid/view/textclassifier/SelectionEvent;

.field private blacklist mStartEvent:Landroid/view/textclassifier/SelectionEvent;


# direct methods
.method constructor blacklist <init>(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassificationContext;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mInvocationMethod:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/textclassifier/TextClassificationSessionId;

    iput-object p1, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/textclassifier/TextClassificationContext;

    iput-object p1, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mContext:Landroid/view/textclassifier/TextClassificationContext;

    return-void
.end method

.method private blacklist modifyAutoSelectionEventType(Landroid/view/textclassifier/SelectionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/textclassifier/SelectionEvent;->getEventType()I

    move-result p0

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    if-eq p0, v2, :cond_0

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/textclassifier/SelectionEvent;->getResultId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/view/textclassifier/SelectionSessionLogger;->isPlatformLocalTextClassifierSmartSelection(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Landroid/view/textclassifier/SelectionEvent;->getAbsoluteEnd()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/textclassifier/SelectionEvent;->getAbsoluteStart()I

    move-result v0

    sub-int/2addr p0, v0

    const/4 v0, 0x1

    if-le p0, v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/textclassifier/SelectionEvent;->setEventType(I)V

    return-void

    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/textclassifier/SelectionEvent;->setEventType(I)V

    return-void

    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/textclassifier/SelectionEvent;->setEventType(I)V

    return-void
.end method

.method private blacklist updateInvocationMethod(Landroid/view/textclassifier/SelectionEvent;)V
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mContext:Landroid/view/textclassifier/TextClassificationContext;

    invoke-virtual {p1, v0}, Landroid/view/textclassifier/SelectionEvent;->setTextClassificationSessionContext(Landroid/view/textclassifier/TextClassificationContext;)V

    invoke-virtual {p1}, Landroid/view/textclassifier/SelectionEvent;->getInvocationMethod()I

    move-result v0

    if-nez v0, :cond_0

    iget p0, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mInvocationMethod:I

    invoke-virtual {p1, p0}, Landroid/view/textclassifier/SelectionEvent;->setInvocationMethod(I)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/textclassifier/SelectionEvent;->getInvocationMethod()I

    move-result p1

    iput p1, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mInvocationMethod:I

    return-void
.end method


# virtual methods
.method blacklist endSession()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mPrevEvent:Landroid/view/textclassifier/SelectionEvent;

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mSmartEvent:Landroid/view/textclassifier/SelectionEvent;

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mStartEvent:Landroid/view/textclassifier/SelectionEvent;

    return-void
.end method

.method blacklist sanitizeEvent(Landroid/view/textclassifier/SelectionEvent;)Z
    .locals 7

    invoke-direct {p0, p1}, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->updateInvocationMethod(Landroid/view/textclassifier/SelectionEvent;)V

    invoke-direct {p0, p1}, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->modifyAutoSelectionEventType(Landroid/view/textclassifier/SelectionEvent;)V

    invoke-virtual {p1}, Landroid/view/textclassifier/SelectionEvent;->getEventType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mStartEvent:Landroid/view/textclassifier/SelectionEvent;

    if-nez v0, :cond_0

    const-string p0, "TextClassificationSession"

    const-string p1, "Selection session not yet started. Ignoring event"

    invoke-static {p0, p1}, Landroid/view/textclassifier/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/view/textclassifier/SelectionEvent;->getEventType()I

    move-result v0

    if-eq v0, v2, :cond_4

    const/4 v5, 0x2

    if-eq v0, v5, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/16 v1, 0x64

    if-eq v0, v1, :cond_1

    const/16 v1, 0x6b

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mPrevEvent:Landroid/view/textclassifier/SelectionEvent;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/textclassifier/SelectionEvent;->getEntityType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/textclassifier/SelectionEvent;->setEntityType(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iput-object p1, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mSmartEvent:Landroid/view/textclassifier/SelectionEvent;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mPrevEvent:Landroid/view/textclassifier/SelectionEvent;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/textclassifier/SelectionEvent;->getAbsoluteStart()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/textclassifier/SelectionEvent;->getAbsoluteStart()I

    move-result v5

    if-ne v0, v5, :cond_6

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mPrevEvent:Landroid/view/textclassifier/SelectionEvent;

    invoke-virtual {v0}, Landroid/view/textclassifier/SelectionEvent;->getAbsoluteEnd()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/textclassifier/SelectionEvent;->getAbsoluteEnd()I

    move-result v5

    if-ne v0, v5, :cond_6

    return v1

    :cond_4
    invoke-virtual {p1}, Landroid/view/textclassifier/SelectionEvent;->getAbsoluteEnd()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/textclassifier/SelectionEvent;->getAbsoluteStart()I

    move-result v5

    add-int/2addr v5, v2

    if-ne v0, v5, :cond_5

    move v1, v2

    :cond_5
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    invoke-virtual {p1, v0}, Landroid/view/textclassifier/SelectionEvent;->setSessionId(Landroid/view/textclassifier/TextClassificationSessionId;)Landroid/view/textclassifier/SelectionEvent;

    iput-object p1, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mStartEvent:Landroid/view/textclassifier/SelectionEvent;

    :cond_6
    :goto_0
    invoke-virtual {p1, v3, v4}, Landroid/view/textclassifier/SelectionEvent;->setEventTime(J)Landroid/view/textclassifier/SelectionEvent;

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mStartEvent:Landroid/view/textclassifier/SelectionEvent;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/textclassifier/SelectionEvent;->getSessionId()Landroid/view/textclassifier/TextClassificationSessionId;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/textclassifier/SelectionEvent;->setSessionId(Landroid/view/textclassifier/TextClassificationSessionId;)Landroid/view/textclassifier/SelectionEvent;

    move-result-object v0

    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mStartEvent:Landroid/view/textclassifier/SelectionEvent;

    invoke-virtual {v1}, Landroid/view/textclassifier/SelectionEvent;->getEventTime()J

    move-result-wide v5

    sub-long v5, v3, v5

    invoke-virtual {v0, v5, v6}, Landroid/view/textclassifier/SelectionEvent;->setDurationSinceSessionStart(J)Landroid/view/textclassifier/SelectionEvent;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/textclassifier/SelectionEvent;->getAbsoluteStart()I

    move-result v1

    iget-object v5, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mStartEvent:Landroid/view/textclassifier/SelectionEvent;

    invoke-virtual {v5}, Landroid/view/textclassifier/SelectionEvent;->getAbsoluteStart()I

    move-result v5

    sub-int/2addr v1, v5

    invoke-virtual {v0, v1}, Landroid/view/textclassifier/SelectionEvent;->setStart(I)Landroid/view/textclassifier/SelectionEvent;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/textclassifier/SelectionEvent;->getAbsoluteEnd()I

    move-result v1

    iget-object v5, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mStartEvent:Landroid/view/textclassifier/SelectionEvent;

    invoke-virtual {v5}, Landroid/view/textclassifier/SelectionEvent;->getAbsoluteStart()I

    move-result v5

    sub-int/2addr v1, v5

    invoke-virtual {v0, v1}, Landroid/view/textclassifier/SelectionEvent;->setEnd(I)Landroid/view/textclassifier/SelectionEvent;

    :cond_7
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mSmartEvent:Landroid/view/textclassifier/SelectionEvent;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/textclassifier/SelectionEvent;->getResultId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/textclassifier/SelectionEvent;->setResultId(Ljava/lang/String;)Landroid/view/textclassifier/SelectionEvent;

    move-result-object v0

    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mSmartEvent:Landroid/view/textclassifier/SelectionEvent;

    invoke-virtual {v1}, Landroid/view/textclassifier/SelectionEvent;->getAbsoluteStart()I

    move-result v1

    iget-object v5, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mStartEvent:Landroid/view/textclassifier/SelectionEvent;

    invoke-virtual {v5}, Landroid/view/textclassifier/SelectionEvent;->getAbsoluteStart()I

    move-result v5

    sub-int/2addr v1, v5

    invoke-virtual {v0, v1}, Landroid/view/textclassifier/SelectionEvent;->setSmartStart(I)Landroid/view/textclassifier/SelectionEvent;

    move-result-object v0

    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mSmartEvent:Landroid/view/textclassifier/SelectionEvent;

    invoke-virtual {v1}, Landroid/view/textclassifier/SelectionEvent;->getAbsoluteEnd()I

    move-result v1

    iget-object v5, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mStartEvent:Landroid/view/textclassifier/SelectionEvent;

    invoke-virtual {v5}, Landroid/view/textclassifier/SelectionEvent;->getAbsoluteStart()I

    move-result v5

    sub-int/2addr v1, v5

    invoke-virtual {v0, v1}, Landroid/view/textclassifier/SelectionEvent;->setSmartEnd(I)Landroid/view/textclassifier/SelectionEvent;

    :cond_8
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mPrevEvent:Landroid/view/textclassifier/SelectionEvent;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/textclassifier/SelectionEvent;->getEventTime()J

    move-result-wide v0

    sub-long/2addr v3, v0

    invoke-virtual {p1, v3, v4}, Landroid/view/textclassifier/SelectionEvent;->setDurationSincePreviousEvent(J)Landroid/view/textclassifier/SelectionEvent;

    move-result-object v0

    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mPrevEvent:Landroid/view/textclassifier/SelectionEvent;

    invoke-virtual {v1}, Landroid/view/textclassifier/SelectionEvent;->getEventIndex()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/textclassifier/SelectionEvent;->setEventIndex(I)Landroid/view/textclassifier/SelectionEvent;

    :cond_9
    iput-object p1, p0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->mPrevEvent:Landroid/view/textclassifier/SelectionEvent;

    return v2
.end method
