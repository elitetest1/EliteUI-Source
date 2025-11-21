.class public final Landroid/view/inputmethod/RemoveSpaceGesture;
.super Landroid/view/inputmethod/HandwritingGesture;
.source "RemoveSpaceGesture.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/RemoveSpaceGesture$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/inputmethod/RemoveSpaceGesture;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mEndPoint:Landroid/graphics/PointF;

.field private final blacklist mStartPoint:Landroid/graphics/PointF;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/inputmethod/RemoveSpaceGesture$1;

    invoke-direct {v0}, Landroid/view/inputmethod/RemoveSpaceGesture$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/RemoveSpaceGesture;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/inputmethod/HandwritingGesture;-><init>()V

    const/16 v0, 0x8

    iput v0, p0, Landroid/view/inputmethod/RemoveSpaceGesture;->mType:I

    iput-object p1, p0, Landroid/view/inputmethod/RemoveSpaceGesture;->mStartPoint:Landroid/graphics/PointF;

    iput-object p2, p0, Landroid/view/inputmethod/RemoveSpaceGesture;->mEndPoint:Landroid/graphics/PointF;

    iput-object p3, p0, Landroid/view/inputmethod/RemoveSpaceGesture;->mFallbackText:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Ljava/lang/String;Landroid/view/inputmethod/RemoveSpaceGesture-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/RemoveSpaceGesture;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Ljava/lang/String;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/inputmethod/HandwritingGesture;-><init>()V

    const/16 v0, 0x8

    iput v0, p0, Landroid/view/inputmethod/RemoveSpaceGesture;->mType:I

    sget-object v0, Landroid/graphics/PointF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iput-object v0, p0, Landroid/view/inputmethod/RemoveSpaceGesture;->mStartPoint:Landroid/graphics/PointF;

    sget-object v0, Landroid/graphics/PointF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iput-object v0, p0, Landroid/view/inputmethod/RemoveSpaceGesture;->mEndPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/view/inputmethod/RemoveSpaceGesture;->mFallbackText:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/inputmethod/RemoveSpaceGesture-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoveSpaceGesture;-><init>(Landroid/os/Parcel;)V

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

    instance-of v0, p1, Landroid/view/inputmethod/RemoveSpaceGesture;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroid/view/inputmethod/RemoveSpaceGesture;

    iget-object v0, p0, Landroid/view/inputmethod/RemoveSpaceGesture;->mStartPoint:Landroid/graphics/PointF;

    iget-object v2, p1, Landroid/view/inputmethod/RemoveSpaceGesture;->mStartPoint:Landroid/graphics/PointF;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/inputmethod/RemoveSpaceGesture;->mEndPoint:Landroid/graphics/PointF;

    iget-object v2, p1, Landroid/view/inputmethod/RemoveSpaceGesture;->mEndPoint:Landroid/graphics/PointF;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroid/view/inputmethod/RemoveSpaceGesture;->mFallbackText:Ljava/lang/String;

    iget-object p1, p1, Landroid/view/inputmethod/RemoveSpaceGesture;->mFallbackText:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public whitelist getEndPoint()Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/RemoveSpaceGesture;->mEndPoint:Landroid/graphics/PointF;

    return-object p0
.end method

.method public whitelist getStartPoint()Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/RemoveSpaceGesture;->mStartPoint:Landroid/graphics/PointF;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget-object v0, p0, Landroid/view/inputmethod/RemoveSpaceGesture;->mStartPoint:Landroid/graphics/PointF;

    iget-object v1, p0, Landroid/view/inputmethod/RemoveSpaceGesture;->mEndPoint:Landroid/graphics/PointF;

    iget-object p0, p0, Landroid/view/inputmethod/RemoveSpaceGesture;->mFallbackText:Ljava/lang/String;

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/RemoveSpaceGesture;->mStartPoint:Landroid/graphics/PointF;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/view/inputmethod/RemoveSpaceGesture;->mEndPoint:Landroid/graphics/PointF;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object p0, p0, Landroid/view/inputmethod/RemoveSpaceGesture;->mFallbackText:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    return-void
.end method
