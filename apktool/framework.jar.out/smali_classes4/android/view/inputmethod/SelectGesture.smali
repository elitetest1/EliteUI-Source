.class public final Landroid/view/inputmethod/SelectGesture;
.super Landroid/view/inputmethod/PreviewableHandwritingGesture;
.source "SelectGesture.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/SelectGesture$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/inputmethod/SelectGesture;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mArea:Landroid/graphics/RectF;

.field private blacklist mGranularity:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/inputmethod/SelectGesture$1;

    invoke-direct {v0}, Landroid/view/inputmethod/SelectGesture$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/SelectGesture;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILandroid/graphics/RectF;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/inputmethod/PreviewableHandwritingGesture;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/view/inputmethod/SelectGesture;->mType:I

    iput-object p2, p0, Landroid/view/inputmethod/SelectGesture;->mArea:Landroid/graphics/RectF;

    iput p1, p0, Landroid/view/inputmethod/SelectGesture;->mGranularity:I

    iput-object p3, p0, Landroid/view/inputmethod/SelectGesture;->mFallbackText:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/graphics/RectF;Ljava/lang/String;Landroid/view/inputmethod/SelectGesture-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/SelectGesture;-><init>(ILandroid/graphics/RectF;Ljava/lang/String;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/inputmethod/PreviewableHandwritingGesture;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/view/inputmethod/SelectGesture;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/SelectGesture;->mFallbackText:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/SelectGesture;->mGranularity:I

    sget-object v0, Landroid/graphics/RectF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/RectF;

    iput-object p1, p0, Landroid/view/inputmethod/SelectGesture;->mArea:Landroid/graphics/RectF;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/inputmethod/SelectGesture-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/SelectGesture;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Landroid/view/inputmethod/SelectGesture;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroid/view/inputmethod/SelectGesture;

    iget v0, p0, Landroid/view/inputmethod/SelectGesture;->mGranularity:I

    iget v2, p1, Landroid/view/inputmethod/SelectGesture;->mGranularity:I

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Landroid/view/inputmethod/SelectGesture;->mFallbackText:Ljava/lang/String;

    iget-object v2, p1, Landroid/view/inputmethod/SelectGesture;->mFallbackText:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object p0, p0, Landroid/view/inputmethod/SelectGesture;->mArea:Landroid/graphics/RectF;

    iget-object p1, p1, Landroid/view/inputmethod/SelectGesture;->mArea:Landroid/graphics/RectF;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public whitelist getGranularity()I
    .locals 0

    iget p0, p0, Landroid/view/inputmethod/SelectGesture;->mGranularity:I

    return p0
.end method

.method public whitelist getSelectionArea()Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/SelectGesture;->mArea:Landroid/graphics/RectF;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget v0, p0, Landroid/view/inputmethod/SelectGesture;->mGranularity:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/SelectGesture;->mArea:Landroid/graphics/RectF;

    iget-object p0, p0, Landroid/view/inputmethod/SelectGesture;->mFallbackText:Ljava/lang/String;

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/SelectGesture;->mFallbackText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/inputmethod/SelectGesture;->mGranularity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Landroid/view/inputmethod/SelectGesture;->mArea:Landroid/graphics/RectF;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method
