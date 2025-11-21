.class public Landroid/telecom/CallScreeningService$CallResponse$Builder;
.super Ljava/lang/Object;
.source "CallScreeningService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/CallScreeningService$CallResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCallComposerAttachmentsToShow:I

.field private greylist-max-o mShouldDisallowCall:Z

.field private greylist-max-o mShouldRejectCall:Z

.field private blacklist mShouldScreenCallViaAudioProcessing:Z

.field private blacklist mShouldSilenceCall:Z

.field private greylist-max-o mShouldSkipCallLog:Z

.field private greylist-max-o mShouldSkipNotification:Z


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/telecom/CallScreeningService$CallResponse$Builder;->mCallComposerAttachmentsToShow:I

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/telecom/CallScreeningService$CallResponse;
    .locals 9

    new-instance v0, Landroid/telecom/CallScreeningService$CallResponse;

    iget-boolean v1, p0, Landroid/telecom/CallScreeningService$CallResponse$Builder;->mShouldDisallowCall:Z

    iget-boolean v2, p0, Landroid/telecom/CallScreeningService$CallResponse$Builder;->mShouldRejectCall:Z

    iget-boolean v3, p0, Landroid/telecom/CallScreeningService$CallResponse$Builder;->mShouldSilenceCall:Z

    iget-boolean v4, p0, Landroid/telecom/CallScreeningService$CallResponse$Builder;->mShouldSkipCallLog:Z

    iget-boolean v5, p0, Landroid/telecom/CallScreeningService$CallResponse$Builder;->mShouldSkipNotification:Z

    iget-boolean v6, p0, Landroid/telecom/CallScreeningService$CallResponse$Builder;->mShouldScreenCallViaAudioProcessing:Z

    iget v7, p0, Landroid/telecom/CallScreeningService$CallResponse$Builder;->mCallComposerAttachmentsToShow:I

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/telecom/CallScreeningService$CallResponse;-><init>(ZZZZZZILandroid/telecom/CallScreeningService-IA;)V

    return-object v0
.end method

.method public whitelist setCallComposerAttachmentsToShow(I)Landroid/telecom/CallScreeningService$CallResponse$Builder;
    .locals 1

    if-gez p1, :cond_0

    return-object p0

    :cond_0
    and-int/lit8 v0, p1, 0x10

    if-nez v0, :cond_1

    iput p1, p0, Landroid/telecom/CallScreeningService$CallResponse$Builder;->mCallComposerAttachmentsToShow:I

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Attachment types must match the ones defined in CallResponse"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist setDisallowCall(Z)Landroid/telecom/CallScreeningService$CallResponse$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/telecom/CallScreeningService$CallResponse$Builder;->mShouldDisallowCall:Z

    return-object p0
.end method

.method public whitelist setRejectCall(Z)Landroid/telecom/CallScreeningService$CallResponse$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/telecom/CallScreeningService$CallResponse$Builder;->mShouldRejectCall:Z

    return-object p0
.end method

.method public whitelist setShouldScreenCallViaAudioProcessing(Z)Landroid/telecom/CallScreeningService$CallResponse$Builder;
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iput-boolean p1, p0, Landroid/telecom/CallScreeningService$CallResponse$Builder;->mShouldScreenCallViaAudioProcessing:Z

    return-object p0
.end method

.method public whitelist setSilenceCall(Z)Landroid/telecom/CallScreeningService$CallResponse$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/telecom/CallScreeningService$CallResponse$Builder;->mShouldSilenceCall:Z

    return-object p0
.end method

.method public whitelist setSkipCallLog(Z)Landroid/telecom/CallScreeningService$CallResponse$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/telecom/CallScreeningService$CallResponse$Builder;->mShouldSkipCallLog:Z

    return-object p0
.end method

.method public whitelist setSkipNotification(Z)Landroid/telecom/CallScreeningService$CallResponse$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/telecom/CallScreeningService$CallResponse$Builder;->mShouldSkipNotification:Z

    return-object p0
.end method
