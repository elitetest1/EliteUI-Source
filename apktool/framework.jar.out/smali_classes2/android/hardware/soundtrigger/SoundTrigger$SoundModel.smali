.class public Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
.super Ljava/lang/Object;
.source "SoundTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/SoundTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SoundModel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/soundtrigger/SoundTrigger$SoundModel$SoundModelType;
    }
.end annotation


# static fields
.field public static final whitelist TYPE_GENERIC_SOUND:I = 0x1

.field public static final whitelist TYPE_KEYPHRASE:I = 0x0

.field public static final greylist-max-o TYPE_UNKNOWN:I = -0x1


# instance fields
.field private final blacklist mData:[B

.field private final blacklist mType:I

.field private final blacklist mUuid:Ljava/util/UUID;

.field private final blacklist mVendorUuid:Ljava/util/UUID;

.field private final blacklist mVersion:I


# direct methods
.method public constructor blacklist <init>(Ljava/util/UUID;Ljava/util/UUID;I[BI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/UUID;

    iput-object p1, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->mUuid:Ljava/util/UUID;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/util/UUID;

    const-wide/16 v0, 0x0

    invoke-direct {p2, v0, v1, v0, v1}, Ljava/util/UUID;-><init>(JJ)V

    :goto_0
    iput-object p2, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->mVendorUuid:Ljava/util/UUID;

    iput p3, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->mType:I

    iput p5, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->mVersion:I

    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    new-array p4, p1, [B

    :goto_1
    iput-object p4, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->mData:[B

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    if-nez v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getType()I

    move-result v2

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getType()I

    move-result v3

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v2

    if-eqz v2, :cond_5

    return v1

    :cond_4
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getVendorUuid()Ljava/util/UUID;

    move-result-object v2

    if-nez v2, :cond_6

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getVendorUuid()Ljava/util/UUID;

    move-result-object v2

    if-eqz v2, :cond_7

    return v1

    :cond_6
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getVendorUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getVendorUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    :cond_7
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getData()[B

    move-result-object v2

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getData()[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getVersion()I

    move-result p0

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getVersion()I

    move-result p1

    if-eq p0, p1, :cond_9

    return v1

    :cond_9
    return v0
.end method

.method public whitelist getData()[B
    .locals 0

    iget-object p0, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->mData:[B

    return-object p0
.end method

.method public whitelist getType()I
    .locals 0

    iget p0, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->mType:I

    return p0
.end method

.method public whitelist getUuid()Ljava/util/UUID;
    .locals 0

    iget-object p0, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->mUuid:Ljava/util/UUID;

    return-object p0
.end method

.method public whitelist getVendorUuid()Ljava/util/UUID;
    .locals 0

    iget-object p0, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->mVendorUuid:Ljava/util/UUID;

    return-object p0
.end method

.method public whitelist getVersion()I
    .locals 0

    iget p0, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->mVersion:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getVersion()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getData()[B

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getType()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getVendorUuid()Ljava/util/UUID;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getVendorUuid()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    return v0
.end method
