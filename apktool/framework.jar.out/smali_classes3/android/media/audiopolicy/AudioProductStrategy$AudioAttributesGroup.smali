.class final Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;
.super Ljava/lang/Object;
.source "AudioProductStrategy.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiopolicy/AudioProductStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AudioAttributesGroup"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAudioAttributes:[Landroid/media/AudioAttributes;

.field private blacklist mLegacyStreamType:I

.field private blacklist mVolumeGroupId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup$1;

    invoke-direct {v0}, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup$1;-><init>()V

    sput-object v0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(II[Landroid/media/AudioAttributes;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mVolumeGroupId:I

    iput p2, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mLegacyStreamType:I

    iput-object p3, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mAudioAttributes:[Landroid/media/AudioAttributes;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    iget v2, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mVolumeGroupId:I

    iget v3, p1, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mVolumeGroupId:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mLegacyStreamType:I

    iget v3, p1, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mLegacyStreamType:I

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mAudioAttributes:[Landroid/media/AudioAttributes;

    iget-object p1, p1, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mAudioAttributes:[Landroid/media/AudioAttributes;

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public blacklist getAudioAttributes()Landroid/media/AudioAttributes;
    .locals 1

    iget-object p0, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mAudioAttributes:[Landroid/media/AudioAttributes;

    array-length v0, p0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/media/audiopolicy/AudioProductStrategy;->-$$Nest$sfgetDEFAULT_ATTRIBUTES()Landroid/media/AudioAttributes;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method public blacklist getStreamType()I
    .locals 0

    iget p0, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mLegacyStreamType:I

    return p0
.end method

.method public blacklist getVolumeGroupId()I
    .locals 0

    iget p0, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mVolumeGroupId:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget v0, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mVolumeGroupId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mLegacyStreamType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p0, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mAudioAttributes:[Landroid/media/AudioAttributes;

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public blacklist supportsAttributes(Landroid/media/AudioAttributes;)Z
    .locals 5

    iget-object p0, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mAudioAttributes:[Landroid/media/AudioAttributes;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    invoke-virtual {v3, p1}, Landroid/media/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3, p1}, Landroid/media/audiopolicy/AudioProductStrategy;->-$$Nest$smattributesMatches(Landroid/media/AudioAttributes;Landroid/media/AudioAttributes;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public blacklist supportsStreamType(I)Z
    .locals 0

    iget p0, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mLegacyStreamType:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n    Legacy Stream Type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mLegacyStreamType:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Volume Group Id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mVolumeGroupId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mAudioAttributes:[Landroid/media/AudioAttributes;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    const-string v4, "\n    -"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/media/AudioAttributes;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    iget v0, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mVolumeGroupId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mLegacyStreamType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mAudioAttributes:[Landroid/media/AudioAttributes;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->mAudioAttributes:[Landroid/media/AudioAttributes;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    or-int/lit8 v3, p2, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/media/AudioAttributes;->writeToParcel(Landroid/os/Parcel;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
