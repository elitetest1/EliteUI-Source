.class public final Landroid/view/inputmethod/InsertGesture;
.super Landroid/view/inputmethod/HandwritingGesture;
.source "InsertGesture.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/InsertGesture$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/inputmethod/InsertGesture;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mPoint:Landroid/graphics/PointF;

.field private blacklist mTextToInsert:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/inputmethod/InsertGesture$1;

    invoke-direct {v0}, Landroid/view/inputmethod/InsertGesture$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/InsertGesture;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/inputmethod/HandwritingGesture;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Landroid/view/inputmethod/InsertGesture;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InsertGesture;->mFallbackText:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InsertGesture;->mTextToInsert:Ljava/lang/String;

    sget-object v0, Landroid/graphics/PointF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    iput-object p1, p0, Landroid/view/inputmethod/InsertGesture;->mPoint:Landroid/graphics/PointF;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/inputmethod/InsertGesture-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InsertGesture;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Landroid/graphics/PointF;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/inputmethod/HandwritingGesture;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Landroid/view/inputmethod/InsertGesture;->mType:I

    iput-object p2, p0, Landroid/view/inputmethod/InsertGesture;->mPoint:Landroid/graphics/PointF;

    iput-object p1, p0, Landroid/view/inputmethod/InsertGesture;->mTextToInsert:Ljava/lang/String;

    iput-object p3, p0, Landroid/view/inputmethod/InsertGesture;->mFallbackText:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Landroid/graphics/PointF;Ljava/lang/String;Landroid/view/inputmethod/InsertGesture-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/InsertGesture;-><init>(Ljava/lang/String;Landroid/graphics/PointF;Ljava/lang/String;)V

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

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Landroid/view/inputmethod/InsertGesture;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Landroid/view/inputmethod/InsertGesture;

    iget-object v0, p0, Landroid/view/inputmethod/InsertGesture;->mFallbackText:Ljava/lang/String;

    iget-object v2, p1, Landroid/view/inputmethod/InsertGesture;->mFallbackText:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Landroid/view/inputmethod/InsertGesture;->mTextToInsert:Ljava/lang/String;

    iget-object v2, p1, Landroid/view/inputmethod/InsertGesture;->mTextToInsert:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-object p0, p0, Landroid/view/inputmethod/InsertGesture;->mPoint:Landroid/graphics/PointF;

    iget-object p1, p1, Landroid/view/inputmethod/InsertGesture;->mPoint:Landroid/graphics/PointF;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public whitelist getInsertionPoint()Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/InsertGesture;->mPoint:Landroid/graphics/PointF;

    return-object p0
.end method

.method public whitelist getTextToInsert()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/InsertGesture;->mTextToInsert:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget-object v0, p0, Landroid/view/inputmethod/InsertGesture;->mPoint:Landroid/graphics/PointF;

    iget-object v1, p0, Landroid/view/inputmethod/InsertGesture;->mTextToInsert:Ljava/lang/String;

    iget-object p0, p0, Landroid/view/inputmethod/InsertGesture;->mFallbackText:Ljava/lang/String;

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/InsertGesture;->mFallbackText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/inputmethod/InsertGesture;->mTextToInsert:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/view/inputmethod/InsertGesture;->mPoint:Landroid/graphics/PointF;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method
