.class public final Landroid/service/voice/VoiceInteractionSession$AssistState;
.super Ljava/lang/Object;
.source "VoiceInteractionSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VoiceInteractionSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AssistState"
.end annotation


# instance fields
.field private final blacklist mActivityId:Landroid/service/voice/VoiceInteractionSession$ActivityId;

.field private final blacklist mContent:Landroid/app/assist/AssistContent;

.field private final blacklist mCount:I

.field private final blacklist mData:Landroid/os/Bundle;

.field private final blacklist mIndex:I

.field private final blacklist mStructure:Landroid/app/assist/AssistStructure;


# direct methods
.method constructor blacklist <init>(Landroid/service/voice/VoiceInteractionSession$ActivityId;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/voice/VoiceInteractionSession$AssistState;->mActivityId:Landroid/service/voice/VoiceInteractionSession$ActivityId;

    iput p5, p0, Landroid/service/voice/VoiceInteractionSession$AssistState;->mIndex:I

    iput p6, p0, Landroid/service/voice/VoiceInteractionSession$AssistState;->mCount:I

    iput-object p2, p0, Landroid/service/voice/VoiceInteractionSession$AssistState;->mData:Landroid/os/Bundle;

    iput-object p3, p0, Landroid/service/voice/VoiceInteractionSession$AssistState;->mStructure:Landroid/app/assist/AssistStructure;

    iput-object p4, p0, Landroid/service/voice/VoiceInteractionSession$AssistState;->mContent:Landroid/app/assist/AssistContent;

    return-void
.end method


# virtual methods
.method public whitelist getActivityId()Landroid/service/voice/VoiceInteractionSession$ActivityId;
    .locals 0

    iget-object p0, p0, Landroid/service/voice/VoiceInteractionSession$AssistState;->mActivityId:Landroid/service/voice/VoiceInteractionSession$ActivityId;

    return-object p0
.end method

.method public whitelist getAssistContent()Landroid/app/assist/AssistContent;
    .locals 0

    iget-object p0, p0, Landroid/service/voice/VoiceInteractionSession$AssistState;->mContent:Landroid/app/assist/AssistContent;

    return-object p0
.end method

.method public whitelist getAssistData()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroid/service/voice/VoiceInteractionSession$AssistState;->mData:Landroid/os/Bundle;

    return-object p0
.end method

.method public whitelist getAssistStructure()Landroid/app/assist/AssistStructure;
    .locals 0

    iget-object p0, p0, Landroid/service/voice/VoiceInteractionSession$AssistState;->mStructure:Landroid/app/assist/AssistStructure;

    return-object p0
.end method

.method public whitelist getCount()I
    .locals 0

    iget p0, p0, Landroid/service/voice/VoiceInteractionSession$AssistState;->mCount:I

    return p0
.end method

.method public whitelist getIndex()I
    .locals 0

    iget p0, p0, Landroid/service/voice/VoiceInteractionSession$AssistState;->mIndex:I

    return p0
.end method

.method public whitelist isFocused()Z
    .locals 0

    iget p0, p0, Landroid/service/voice/VoiceInteractionSession$AssistState;->mIndex:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
