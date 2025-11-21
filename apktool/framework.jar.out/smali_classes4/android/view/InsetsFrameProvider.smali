.class public Landroid/view/InsetsFrameProvider;
.super Ljava/lang/Object;
.source "InsetsFrameProvider.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InsetsFrameProvider$InsetsSizeOverride;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/InsetsFrameProvider;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist SOURCE_ARBITRARY_RECTANGLE:I = 0x3

.field public static final blacklist SOURCE_CONTAINER_BOUNDS:I = 0x1

.field public static final blacklist SOURCE_DISPLAY:I = 0x0

.field public static final blacklist SOURCE_FRAME:I = 0x2


# instance fields
.field private blacklist mArbitraryRectangle:Landroid/graphics/Rect;

.field private blacklist mBoundingRects:[Landroid/graphics/Rect;

.field private blacklist mFlags:I

.field private final blacklist mId:I

.field private blacklist mInsetsSize:Landroid/graphics/Insets;

.field private blacklist mInsetsSizeOverrides:[Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

.field private blacklist mMinimalInsetsSizeInDisplayCutoutSafe:Landroid/graphics/Insets;

.field private blacklist mSource:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/InsetsFrameProvider$1;

    invoke-direct {v0}, Landroid/view/InsetsFrameProvider$1;-><init>()V

    sput-object v0, Landroid/view/InsetsFrameProvider;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Landroid/view/InsetsFrameProvider;->mSource:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/InsetsFrameProvider;->mInsetsSize:Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/view/InsetsFrameProvider;->mInsetsSizeOverrides:[Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    iput-object v0, p0, Landroid/view/InsetsFrameProvider;->mMinimalInsetsSizeInDisplayCutoutSafe:Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/view/InsetsFrameProvider;->mBoundingRects:[Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InsetsFrameProvider;->mId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InsetsFrameProvider;->mSource:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InsetsFrameProvider;->mFlags:I

    sget-object v0, Landroid/graphics/Insets;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/view/InsetsFrameProvider;->mInsetsSize:Landroid/graphics/Insets;

    sget-object v0, Landroid/view/InsetsFrameProvider$InsetsSizeOverride;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    iput-object v0, p0, Landroid/view/InsetsFrameProvider;->mInsetsSizeOverrides:[Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/InsetsFrameProvider;->mArbitraryRectangle:Landroid/graphics/Rect;

    sget-object v0, Landroid/graphics/Insets;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/view/InsetsFrameProvider;->mMinimalInsetsSizeInDisplayCutoutSafe:Landroid/graphics/Insets;

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/graphics/Rect;

    iput-object p1, p0, Landroid/view/InsetsFrameProvider;->mBoundingRects:[Landroid/graphics/Rect;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Landroid/view/InsetsFrameProvider;->mSource:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/InsetsFrameProvider;->mInsetsSize:Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/view/InsetsFrameProvider;->mInsetsSizeOverrides:[Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    iput-object v0, p0, Landroid/view/InsetsFrameProvider;->mMinimalInsetsSizeInDisplayCutoutSafe:Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/view/InsetsFrameProvider;->mBoundingRects:[Landroid/graphics/Rect;

    invoke-static {p1, p2, p3}, Landroid/view/InsetsSource;->createId(Ljava/lang/Object;II)I

    move-result p1

    iput p1, p0, Landroid/view/InsetsFrameProvider;->mId:I

    return-void
.end method

.method private static blacklist sourceToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "UNDEFINED"

    return-object p0

    :cond_0
    const-string p0, "ARBITRARY_RECTANGLE"

    return-object p0

    :cond_1
    const-string p0, "FRAME"

    return-object p0

    :cond_2
    const-string p0, "CONTAINER_BOUNDS"

    return-object p0

    :cond_3
    const-string p0, "DISPLAY"

    return-object p0
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
    check-cast p1, Landroid/view/InsetsFrameProvider;

    iget v2, p0, Landroid/view/InsetsFrameProvider;->mId:I

    iget v3, p1, Landroid/view/InsetsFrameProvider;->mId:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/view/InsetsFrameProvider;->mSource:I

    iget v3, p1, Landroid/view/InsetsFrameProvider;->mSource:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/view/InsetsFrameProvider;->mFlags:I

    iget v3, p1, Landroid/view/InsetsFrameProvider;->mFlags:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/view/InsetsFrameProvider;->mInsetsSize:Landroid/graphics/Insets;

    iget-object v3, p1, Landroid/view/InsetsFrameProvider;->mInsetsSize:Landroid/graphics/Insets;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/view/InsetsFrameProvider;->mInsetsSizeOverrides:[Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    iget-object v3, p1, Landroid/view/InsetsFrameProvider;->mInsetsSizeOverrides:[Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/view/InsetsFrameProvider;->mArbitraryRectangle:Landroid/graphics/Rect;

    iget-object v3, p1, Landroid/view/InsetsFrameProvider;->mArbitraryRectangle:Landroid/graphics/Rect;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/view/InsetsFrameProvider;->mMinimalInsetsSizeInDisplayCutoutSafe:Landroid/graphics/Insets;

    iget-object v3, p1, Landroid/view/InsetsFrameProvider;->mMinimalInsetsSizeInDisplayCutoutSafe:Landroid/graphics/Insets;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Landroid/view/InsetsFrameProvider;->mBoundingRects:[Landroid/graphics/Rect;

    iget-object p1, p1, Landroid/view/InsetsFrameProvider;->mBoundingRects:[Landroid/graphics/Rect;

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public blacklist getArbitraryRectangle()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroid/view/InsetsFrameProvider;->mArbitraryRectangle:Landroid/graphics/Rect;

    return-object p0
.end method

.method public blacklist getBoundingRects()[Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroid/view/InsetsFrameProvider;->mBoundingRects:[Landroid/graphics/Rect;

    return-object p0
.end method

.method public blacklist getFlags()I
    .locals 0

    iget p0, p0, Landroid/view/InsetsFrameProvider;->mFlags:I

    return p0
.end method

.method public blacklist getId()I
    .locals 0

    iget p0, p0, Landroid/view/InsetsFrameProvider;->mId:I

    return p0
.end method

.method public blacklist getIndex()I
    .locals 0

    iget p0, p0, Landroid/view/InsetsFrameProvider;->mId:I

    invoke-static {p0}, Landroid/view/InsetsSource;->getIndex(I)I

    move-result p0

    return p0
.end method

.method public blacklist getInsetsSize()Landroid/graphics/Insets;
    .locals 0

    iget-object p0, p0, Landroid/view/InsetsFrameProvider;->mInsetsSize:Landroid/graphics/Insets;

    return-object p0
.end method

.method public blacklist getInsetsSizeOverrides()[Landroid/view/InsetsFrameProvider$InsetsSizeOverride;
    .locals 0

    iget-object p0, p0, Landroid/view/InsetsFrameProvider;->mInsetsSizeOverrides:[Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    return-object p0
.end method

.method public blacklist getMinimalInsetsSizeInDisplayCutoutSafe()Landroid/graphics/Insets;
    .locals 0

    iget-object p0, p0, Landroid/view/InsetsFrameProvider;->mMinimalInsetsSizeInDisplayCutoutSafe:Landroid/graphics/Insets;

    return-object p0
.end method

.method public blacklist getSource()I
    .locals 0

    iget p0, p0, Landroid/view/InsetsFrameProvider;->mSource:I

    return p0
.end method

.method public blacklist getType()I
    .locals 0

    iget p0, p0, Landroid/view/InsetsFrameProvider;->mId:I

    invoke-static {p0}, Landroid/view/InsetsSource;->getType(I)I

    move-result p0

    return p0
.end method

.method public blacklist hasFlags(I)Z
    .locals 0

    iget p0, p0, Landroid/view/InsetsFrameProvider;->mFlags:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 9

    iget v0, p0, Landroid/view/InsetsFrameProvider;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/view/InsetsFrameProvider;->mSource:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/view/InsetsFrameProvider;->mFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Landroid/view/InsetsFrameProvider;->mInsetsSize:Landroid/graphics/Insets;

    iget-object v0, p0, Landroid/view/InsetsFrameProvider;->mInsetsSizeOverrides:[Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Landroid/view/InsetsFrameProvider;->mArbitraryRectangle:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/view/InsetsFrameProvider;->mMinimalInsetsSizeInDisplayCutoutSafe:Landroid/graphics/Insets;

    iget-object p0, p0, Landroid/view/InsetsFrameProvider;->mBoundingRects:[Landroid/graphics/Rect;

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public blacklist idEquals(Landroid/view/InsetsFrameProvider;)Z
    .locals 0

    iget p0, p0, Landroid/view/InsetsFrameProvider;->mId:I

    iget p1, p1, Landroid/view/InsetsFrameProvider;->mId:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist setArbitraryRectangle(Landroid/graphics/Rect;)Landroid/view/InsetsFrameProvider;
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/view/InsetsFrameProvider;->mArbitraryRectangle:Landroid/graphics/Rect;

    return-object p0
.end method

.method public blacklist setBoundingRects([Landroid/graphics/Rect;)Landroid/view/InsetsFrameProvider;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [Landroid/graphics/Rect;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/graphics/Rect;

    :goto_0
    iput-object p1, p0, Landroid/view/InsetsFrameProvider;->mBoundingRects:[Landroid/graphics/Rect;

    return-object p0
.end method

.method public blacklist setFlags(I)Landroid/view/InsetsFrameProvider;
    .locals 0

    iput p1, p0, Landroid/view/InsetsFrameProvider;->mFlags:I

    return-object p0
.end method

.method public blacklist setFlags(II)Landroid/view/InsetsFrameProvider;
    .locals 2

    iget v0, p0, Landroid/view/InsetsFrameProvider;->mFlags:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int/2addr p1, p2

    or-int/2addr p1, v0

    iput p1, p0, Landroid/view/InsetsFrameProvider;->mFlags:I

    return-object p0
.end method

.method public blacklist setInsetsSize(Landroid/graphics/Insets;)Landroid/view/InsetsFrameProvider;
    .locals 0

    iput-object p1, p0, Landroid/view/InsetsFrameProvider;->mInsetsSize:Landroid/graphics/Insets;

    return-object p0
.end method

.method public blacklist setInsetsSizeOverrides([Landroid/view/InsetsFrameProvider$InsetsSizeOverride;)Landroid/view/InsetsFrameProvider;
    .locals 0

    iput-object p1, p0, Landroid/view/InsetsFrameProvider;->mInsetsSizeOverrides:[Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    return-object p0
.end method

.method public blacklist setMinimalInsetsSizeInDisplayCutoutSafe(Landroid/graphics/Insets;)Landroid/view/InsetsFrameProvider;
    .locals 0

    iput-object p1, p0, Landroid/view/InsetsFrameProvider;->mMinimalInsetsSizeInDisplayCutoutSafe:Landroid/graphics/Insets;

    return-object p0
.end method

.method public blacklist setSource(I)Landroid/view/InsetsFrameProvider;
    .locals 0

    iput p1, p0, Landroid/view/InsetsFrameProvider;->mSource:I

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InsetsFrameProvider: {id=#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/view/InsetsFrameProvider;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/InsetsFrameProvider;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/InsetsFrameProvider;->getType()I

    move-result v1

    invoke-static {v1}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/InsetsFrameProvider;->mSource:I

    invoke-static {v1}, Landroid/view/InsetsFrameProvider;->sourceToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", flags=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/InsetsFrameProvider;->mFlags:I

    invoke-static {v1}, Landroid/view/InsetsSource;->flagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/InsetsFrameProvider;->mInsetsSize:Landroid/graphics/Insets;

    if-eqz v1, :cond_0

    const-string v1, ", insetsSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/InsetsFrameProvider;->mInsetsSize:Landroid/graphics/Insets;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Landroid/view/InsetsFrameProvider;->mInsetsSizeOverrides:[Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    if-eqz v1, :cond_1

    const-string v1, ", insetsSizeOverrides="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/InsetsFrameProvider;->mInsetsSizeOverrides:[Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Landroid/view/InsetsFrameProvider;->mArbitraryRectangle:Landroid/graphics/Rect;

    if-eqz v1, :cond_2

    const-string v1, ", mArbitraryRectangle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/InsetsFrameProvider;->mArbitraryRectangle:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Landroid/view/InsetsFrameProvider;->mMinimalInsetsSizeInDisplayCutoutSafe:Landroid/graphics/Insets;

    if-eqz v1, :cond_3

    const-string v1, ", mMinimalInsetsSizeInDisplayCutoutSafe="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/InsetsFrameProvider;->mMinimalInsetsSizeInDisplayCutoutSafe:Landroid/graphics/Insets;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Landroid/view/InsetsFrameProvider;->mBoundingRects:[Landroid/graphics/Rect;

    if-eqz v1, :cond_4

    const-string v1, ", mBoundingRects="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/view/InsetsFrameProvider;->mBoundingRects:[Landroid/graphics/Rect;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/view/InsetsFrameProvider;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/InsetsFrameProvider;->mSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/InsetsFrameProvider;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/InsetsFrameProvider;->mInsetsSize:Landroid/graphics/Insets;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/view/InsetsFrameProvider;->mInsetsSizeOverrides:[Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/view/InsetsFrameProvider;->mArbitraryRectangle:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/view/InsetsFrameProvider;->mMinimalInsetsSizeInDisplayCutoutSafe:Landroid/graphics/Insets;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object p0, p0, Landroid/view/InsetsFrameProvider;->mBoundingRects:[Landroid/graphics/Rect;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return-void
.end method
