.class public Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;
.super Ljava/lang/Object;
.source "VoiceInteractionManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VoiceInteractionManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HotwordDetectionServiceIdentity"
.end annotation


# instance fields
.field private final blacklist mIsolatedUid:I

.field private final blacklist mOwnerUid:I


# direct methods
.method public constructor blacklist <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;->mIsolatedUid:I

    iput p2, p0, Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;->mOwnerUid:I

    return-void
.end method


# virtual methods
.method public blacklist getIsolatedUid()I
    .locals 0

    iget p0, p0, Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;->mIsolatedUid:I

    return p0
.end method

.method public blacklist getOwnerUid()I
    .locals 0

    iget p0, p0, Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;->mOwnerUid:I

    return p0
.end method
