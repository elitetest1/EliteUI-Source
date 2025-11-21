.class public final Landroid/media/VolumeShaper$Operation;
.super Ljava/lang/Object;
.source "VolumeShaper.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/VolumeShaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/VolumeShaper$Operation$Builder;,
        Landroid/media/VolumeShaper$Operation$Flag;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/VolumeShaper$Operation;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o FLAG_CREATE_IF_NEEDED:I = 0x10

.field private static final greylist-max-o FLAG_DEFER:I = 0x8

.field private static final greylist-max-o FLAG_JOIN:I = 0x4

.field private static final greylist-max-o FLAG_NONE:I = 0x0

.field private static final greylist-max-o FLAG_PUBLIC_ALL:I = 0x3

.field private static final greylist-max-o FLAG_REVERSE:I = 0x1

.field private static final greylist-max-o FLAG_TERMINATE:I = 0x2

.field public static final whitelist PLAY:Landroid/media/VolumeShaper$Operation;

.field public static final whitelist REVERSE:Landroid/media/VolumeShaper$Operation;


# instance fields
.field private final greylist-max-r mFlags:I

.field private final greylist-max-r mReplaceId:I

.field private final greylist-max-r mXOffset:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFlags(Landroid/media/VolumeShaper$Operation;)I
    .locals 0

    iget p0, p0, Landroid/media/VolumeShaper$Operation;->mFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmReplaceId(Landroid/media/VolumeShaper$Operation;)I
    .locals 0

    iget p0, p0, Landroid/media/VolumeShaper$Operation;->mReplaceId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmXOffset(Landroid/media/VolumeShaper$Operation;)F
    .locals 0

    iget p0, p0, Landroid/media/VolumeShaper$Operation;->mXOffset:F

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/VolumeShaper$Operation$Builder;

    invoke-direct {v0}, Landroid/media/VolumeShaper$Operation$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/media/VolumeShaper$Operation$Builder;->build()Landroid/media/VolumeShaper$Operation;

    move-result-object v0

    sput-object v0, Landroid/media/VolumeShaper$Operation;->PLAY:Landroid/media/VolumeShaper$Operation;

    new-instance v0, Landroid/media/VolumeShaper$Operation$Builder;

    invoke-direct {v0}, Landroid/media/VolumeShaper$Operation$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/media/VolumeShaper$Operation$Builder;->reverse()Landroid/media/VolumeShaper$Operation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/VolumeShaper$Operation$Builder;->build()Landroid/media/VolumeShaper$Operation;

    move-result-object v0

    sput-object v0, Landroid/media/VolumeShaper$Operation;->REVERSE:Landroid/media/VolumeShaper$Operation;

    new-instance v0, Landroid/media/VolumeShaper$Operation$1;

    invoke-direct {v0}, Landroid/media/VolumeShaper$Operation$1;-><init>()V

    sput-object v0, Landroid/media/VolumeShaper$Operation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-r <init>(IIF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/VolumeShaper$Operation;->mFlags:I

    iput p2, p0, Landroid/media/VolumeShaper$Operation;->mReplaceId:I

    iput p3, p0, Landroid/media/VolumeShaper$Operation;->mXOffset:F

    return-void
.end method

.method synthetic constructor blacklist <init>(IIFLandroid/media/VolumeShaper-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/media/VolumeShaper$Operation;-><init>(IIF)V

    return-void
.end method

.method private static blacklist flagsFromAidl(I)I
    .locals 2

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    :cond_2
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x8

    :cond_3
    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_4

    or-int/lit8 p0, v0, 0x10

    return p0

    :cond_4
    return v0
.end method

.method private static blacklist flagsToAidl(I)I
    .locals 2

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    :cond_2
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x8

    :cond_3
    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_4

    or-int/lit8 p0, v0, 0x10

    return p0

    :cond_4
    return v0
.end method

.method public static blacklist fromParcelable(Landroid/media/VolumeShaperOperation;)Landroid/media/VolumeShaper$Operation;
    .locals 3

    new-instance v0, Landroid/media/VolumeShaper$Operation;

    iget v1, p0, Landroid/media/VolumeShaperOperation;->flags:I

    invoke-static {v1}, Landroid/media/VolumeShaper$Operation;->flagsFromAidl(I)I

    move-result v1

    iget v2, p0, Landroid/media/VolumeShaperOperation;->replaceId:I

    iget p0, p0, Landroid/media/VolumeShaperOperation;->xOffset:F

    invoke-direct {v0, v1, v2, p0}, Landroid/media/VolumeShaper$Operation;-><init>(IIF)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Landroid/media/VolumeShaper$Operation;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    check-cast p1, Landroid/media/VolumeShaper$Operation;

    iget v2, p0, Landroid/media/VolumeShaper$Operation;->mFlags:I

    iget v3, p1, Landroid/media/VolumeShaper$Operation;->mFlags:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/media/VolumeShaper$Operation;->mReplaceId:I

    iget v3, p1, Landroid/media/VolumeShaper$Operation;->mReplaceId:I

    if-ne v2, v3, :cond_2

    iget p0, p0, Landroid/media/VolumeShaper$Operation;->mXOffset:F

    iget p1, p1, Landroid/media/VolumeShaper$Operation;->mXOffset:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget v0, p0, Landroid/media/VolumeShaper$Operation;->mFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/media/VolumeShaper$Operation;->mReplaceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Landroid/media/VolumeShaper$Operation;->mXOffset:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public blacklist toParcelable()Landroid/media/VolumeShaperOperation;
    .locals 2

    new-instance v0, Landroid/media/VolumeShaperOperation;

    invoke-direct {v0}, Landroid/media/VolumeShaperOperation;-><init>()V

    iget v1, p0, Landroid/media/VolumeShaper$Operation;->mFlags:I

    invoke-static {v1}, Landroid/media/VolumeShaper$Operation;->flagsToAidl(I)I

    move-result v1

    iput v1, v0, Landroid/media/VolumeShaperOperation;->flags:I

    iget v1, p0, Landroid/media/VolumeShaper$Operation;->mReplaceId:I

    iput v1, v0, Landroid/media/VolumeShaperOperation;->replaceId:I

    iget p0, p0, Landroid/media/VolumeShaper$Operation;->mXOffset:F

    iput p0, v0, Landroid/media/VolumeShaperOperation;->xOffset:F

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VolumeShaper.Operation{mFlags = 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/media/VolumeShaper$Operation;->mFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mReplaceId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/VolumeShaper$Operation;->mReplaceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mXOffset = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/media/VolumeShaper$Operation;->mXOffset:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p0}, Landroid/media/VolumeShaper$Operation;->toParcelable()Landroid/media/VolumeShaperOperation;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/media/VolumeShaperOperation;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
