.class public Landroid/hardware/location/ContextHubIntentEvent;
.super Ljava/lang/Object;
.source "ContextHubIntentEvent.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mClientAuthorizationState:I

.field private final blacklist mContextHubInfo:Landroid/hardware/location/ContextHubInfo;

.field private final blacklist mEventType:I

.field private final blacklist mNanoAppAbortCode:I

.field private final blacklist mNanoAppId:J

.field private final blacklist mNanoAppMessage:Landroid/hardware/location/NanoAppMessage;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/location/ContextHubInfo;I)V
    .locals 8

    const/4 v6, -0x1

    const/4 v7, 0x0

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v7}, Landroid/hardware/location/ContextHubIntentEvent;-><init>(Landroid/hardware/location/ContextHubInfo;IJLandroid/hardware/location/NanoAppMessage;II)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/hardware/location/ContextHubInfo;IJ)V
    .locals 8

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v7}, Landroid/hardware/location/ContextHubIntentEvent;-><init>(Landroid/hardware/location/ContextHubInfo;IJLandroid/hardware/location/NanoAppMessage;II)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/hardware/location/ContextHubInfo;IJI)V
    .locals 8

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move v6, p5

    invoke-direct/range {v0 .. v7}, Landroid/hardware/location/ContextHubIntentEvent;-><init>(Landroid/hardware/location/ContextHubInfo;IJLandroid/hardware/location/NanoAppMessage;II)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/hardware/location/ContextHubInfo;IJLandroid/hardware/location/NanoAppMessage;)V
    .locals 8

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Landroid/hardware/location/ContextHubIntentEvent;-><init>(Landroid/hardware/location/ContextHubInfo;IJLandroid/hardware/location/NanoAppMessage;II)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/hardware/location/ContextHubInfo;IJLandroid/hardware/location/NanoAppMessage;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/location/ContextHubIntentEvent;->mContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    iput p2, p0, Landroid/hardware/location/ContextHubIntentEvent;->mEventType:I

    iput-wide p3, p0, Landroid/hardware/location/ContextHubIntentEvent;->mNanoAppId:J

    iput-object p5, p0, Landroid/hardware/location/ContextHubIntentEvent;->mNanoAppMessage:Landroid/hardware/location/NanoAppMessage;

    iput p6, p0, Landroid/hardware/location/ContextHubIntentEvent;->mNanoAppAbortCode:I

    iput p7, p0, Landroid/hardware/location/ContextHubIntentEvent;->mClientAuthorizationState:I

    return-void
.end method

.method public static whitelist fromIntent(Landroid/content/Intent;)Landroid/hardware/location/ContextHubIntentEvent;
    .locals 9

    const-string v0, "Intent cannot be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "android.hardware.location.extra.CONTEXT_HUB_INFO"

    invoke-static {p0, v0}, Landroid/hardware/location/ContextHubIntentEvent;->hasExtraOrThrow(Landroid/content/Intent;Ljava/lang/String;)V

    const-class v1, Landroid/hardware/location/ContextHubInfo;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/hardware/location/ContextHubInfo;

    if-eqz v2, :cond_4

    const-string v0, "android.hardware.location.extra.EVENT_TYPE"

    invoke-static {p0, v0}, Landroid/hardware/location/ContextHubIntentEvent;->getIntExtraOrThrow(Landroid/content/Intent;Ljava/lang/String;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown intent event type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p0, Landroid/hardware/location/ContextHubIntentEvent;

    invoke-direct {p0, v2, v3}, Landroid/hardware/location/ContextHubIntentEvent;-><init>(Landroid/hardware/location/ContextHubInfo;I)V

    return-object p0

    :pswitch_1
    const-string v0, "android.hardware.location.extra.NANOAPP_ID"

    invoke-static {p0, v0}, Landroid/hardware/location/ContextHubIntentEvent;->getLongExtraOrThrow(Landroid/content/Intent;Ljava/lang/String;)J

    move-result-wide v4

    const/4 v0, 0x5

    if-ne v3, v0, :cond_1

    const-string v0, "android.hardware.location.extra.MESSAGE"

    invoke-static {p0, v0}, Landroid/hardware/location/ContextHubIntentEvent;->hasExtraOrThrow(Landroid/content/Intent;Ljava/lang/String;)V

    const-class v1, Landroid/hardware/location/NanoAppMessage;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Landroid/hardware/location/NanoAppMessage;

    if-eqz v6, :cond_0

    new-instance v1, Landroid/hardware/location/ContextHubIntentEvent;

    invoke-direct/range {v1 .. v6}, Landroid/hardware/location/ContextHubIntentEvent;-><init>(Landroid/hardware/location/ContextHubInfo;IJLandroid/hardware/location/NanoAppMessage;)V

    return-object v1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "NanoAppMessage extra was null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 v0, 0x4

    if-ne v3, v0, :cond_2

    const-string v0, "android.hardware.location.extra.NANOAPP_ABORT_CODE"

    invoke-static {p0, v0}, Landroid/hardware/location/ContextHubIntentEvent;->getIntExtraOrThrow(Landroid/content/Intent;Ljava/lang/String;)I

    move-result v6

    new-instance v1, Landroid/hardware/location/ContextHubIntentEvent;

    invoke-direct/range {v1 .. v6}, Landroid/hardware/location/ContextHubIntentEvent;-><init>(Landroid/hardware/location/ContextHubInfo;IJI)V

    return-object v1

    :cond_2
    const/4 v0, 0x7

    if-ne v3, v0, :cond_3

    const-string v0, "android.hardware.location.extra.CLIENT_AUTHORIZATION_STATE"

    invoke-static {p0, v0}, Landroid/hardware/location/ContextHubIntentEvent;->getIntExtraOrThrow(Landroid/content/Intent;Ljava/lang/String;)I

    move-result v8

    new-instance v1, Landroid/hardware/location/ContextHubIntentEvent;

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-direct/range {v1 .. v8}, Landroid/hardware/location/ContextHubIntentEvent;-><init>(Landroid/hardware/location/ContextHubInfo;IJLandroid/hardware/location/NanoAppMessage;II)V

    return-object v1

    :cond_3
    new-instance p0, Landroid/hardware/location/ContextHubIntentEvent;

    invoke-direct {p0, v2, v3, v4, v5}, Landroid/hardware/location/ContextHubIntentEvent;-><init>(Landroid/hardware/location/ContextHubInfo;IJ)V

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ContextHubInfo extra was null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static blacklist getIntExtraOrThrow(Landroid/content/Intent;Ljava/lang/String;)I
    .locals 1

    invoke-static {p0, p1}, Landroid/hardware/location/ContextHubIntentEvent;->hasExtraOrThrow(Landroid/content/Intent;Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static blacklist getLongExtraOrThrow(Landroid/content/Intent;Ljava/lang/String;)J
    .locals 2

    invoke-static {p0, p1}, Landroid/hardware/location/ContextHubIntentEvent;->hasExtraOrThrow(Landroid/content/Intent;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static blacklist hasExtraOrThrow(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Intent did not have extra: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/hardware/location/ContextHubIntentEvent;

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    check-cast p1, Landroid/hardware/location/ContextHubIntentEvent;

    invoke-virtual {p1}, Landroid/hardware/location/ContextHubIntentEvent;->getEventType()I

    move-result v1

    iget v3, p0, Landroid/hardware/location/ContextHubIntentEvent;->mEventType:I

    if-ne v1, v3, :cond_8

    invoke-virtual {p1}, Landroid/hardware/location/ContextHubIntentEvent;->getContextHubInfo()Landroid/hardware/location/ContextHubInfo;

    move-result-object v1

    iget-object v3, p0, Landroid/hardware/location/ContextHubIntentEvent;->mContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    invoke-virtual {v1, v3}, Landroid/hardware/location/ContextHubInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :try_start_0
    iget v1, p0, Landroid/hardware/location/ContextHubIntentEvent;->mEventType:I

    const/4 v3, 0x6

    if-eq v1, v3, :cond_2

    invoke-virtual {p1}, Landroid/hardware/location/ContextHubIntentEvent;->getNanoAppId()J

    move-result-wide v3

    iget-wide v5, p0, Landroid/hardware/location/ContextHubIntentEvent;->mNanoAppId:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v0

    :goto_1
    iget v3, p0, Landroid/hardware/location/ContextHubIntentEvent;->mEventType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    invoke-virtual {p1}, Landroid/hardware/location/ContextHubIntentEvent;->getNanoAppAbortCode()I

    move-result v3

    iget v4, p0, Landroid/hardware/location/ContextHubIntentEvent;->mNanoAppAbortCode:I

    if-ne v3, v4, :cond_3

    move v3, v0

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    and-int/2addr v1, v3

    :cond_4
    iget v3, p0, Landroid/hardware/location/ContextHubIntentEvent;->mEventType:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_5

    invoke-virtual {p1}, Landroid/hardware/location/ContextHubIntentEvent;->getNanoAppMessage()Landroid/hardware/location/NanoAppMessage;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/location/ContextHubIntentEvent;->mNanoAppMessage:Landroid/hardware/location/NanoAppMessage;

    invoke-virtual {v3, v4}, Landroid/hardware/location/NanoAppMessage;->equals(Ljava/lang/Object;)Z

    move-result v3

    and-int/2addr v1, v3

    :cond_5
    iget v3, p0, Landroid/hardware/location/ContextHubIntentEvent;->mEventType:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_7

    invoke-virtual {p1}, Landroid/hardware/location/ContextHubIntentEvent;->getClientAuthorizationState()I

    move-result p1

    iget p0, p0, Landroid/hardware/location/ContextHubIntentEvent;->mClientAuthorizationState:I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, p0, :cond_6

    goto :goto_3

    :cond_6
    move v0, v2

    :goto_3
    and-int p0, v1, v0

    return p0

    :cond_7
    return v1

    :catch_0
    :cond_8
    return v2
.end method

.method public whitelist getClientAuthorizationState()I
    .locals 3

    iget v0, p0, Landroid/hardware/location/ContextHubIntentEvent;->mEventType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget p0, p0, Landroid/hardware/location/ContextHubIntentEvent;->mClientAuthorizationState:I

    return p0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot invoke getClientAuthorizationState() on non-authorization event: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroid/hardware/location/ContextHubIntentEvent;->mEventType:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getContextHubInfo()Landroid/hardware/location/ContextHubInfo;
    .locals 0

    iget-object p0, p0, Landroid/hardware/location/ContextHubIntentEvent;->mContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    return-object p0
.end method

.method public whitelist getEventType()I
    .locals 0

    iget p0, p0, Landroid/hardware/location/ContextHubIntentEvent;->mEventType:I

    return p0
.end method

.method public whitelist getNanoAppAbortCode()I
    .locals 3

    iget v0, p0, Landroid/hardware/location/ContextHubIntentEvent;->mEventType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget p0, p0, Landroid/hardware/location/ContextHubIntentEvent;->mNanoAppAbortCode:I

    return p0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot invoke getNanoAppAbortCode() on non-abort event: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroid/hardware/location/ContextHubIntentEvent;->mEventType:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getNanoAppId()J
    .locals 2

    iget v0, p0, Landroid/hardware/location/ContextHubIntentEvent;->mEventType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget-wide v0, p0, Landroid/hardware/location/ContextHubIntentEvent;->mNanoAppId:J

    return-wide v0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Cannot invoke getNanoAppId() on Context Hub reset event"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist getNanoAppMessage()Landroid/hardware/location/NanoAppMessage;
    .locals 3

    iget v0, p0, Landroid/hardware/location/ContextHubIntentEvent;->mEventType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Landroid/hardware/location/ContextHubIntentEvent;->mNanoAppMessage:Landroid/hardware/location/NanoAppMessage;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot invoke getNanoAppMessage() on non-message event: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroid/hardware/location/ContextHubIntentEvent;->mEventType:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api hashCode()I
    .locals 7

    invoke-static {}, Landroid/chre/flags/Flags;->fixApiCheck()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0

    :cond_0
    iget v0, p0, Landroid/hardware/location/ContextHubIntentEvent;->mEventType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/location/ContextHubIntentEvent;->mContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    iget-wide v3, p0, Landroid/hardware/location/ContextHubIntentEvent;->mNanoAppId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/location/ContextHubIntentEvent;->mNanoAppMessage:Landroid/hardware/location/NanoAppMessage;

    iget v0, p0, Landroid/hardware/location/ContextHubIntentEvent;->mNanoAppAbortCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget p0, p0, Landroid/hardware/location/ContextHubIntentEvent;->mClientAuthorizationState:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ContextHubIntentEvent[eventType = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/hardware/location/ContextHubIntentEvent;->mEventType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", contextHubId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/location/ContextHubIntentEvent;->mContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    invoke-virtual {v1}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroid/hardware/location/ContextHubIntentEvent;->mEventType:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", nanoAppId = 0x"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/hardware/location/ContextHubIntentEvent;->mNanoAppId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget v1, p0, Landroid/hardware/location/ContextHubIntentEvent;->mEventType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", nanoAppAbortCode = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/hardware/location/ContextHubIntentEvent;->mNanoAppAbortCode:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget v1, p0, Landroid/hardware/location/ContextHubIntentEvent;->mEventType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", nanoAppMessage = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/hardware/location/ContextHubIntentEvent;->mNanoAppMessage:Landroid/hardware/location/NanoAppMessage;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget v1, p0, Landroid/hardware/location/ContextHubIntentEvent;->mEventType:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", clientAuthState = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/hardware/location/ContextHubIntentEvent;->mClientAuthorizationState:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
