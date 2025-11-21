.class public final Landroid/view/RoundedCorner;
.super Ljava/lang/Object;
.source "RoundedCorner.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/RoundedCorner$Position;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/RoundedCorner;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist POSITION_BOTTOM_LEFT:I = 0x3

.field public static final whitelist POSITION_BOTTOM_RIGHT:I = 0x2

.field public static final whitelist POSITION_TOP_LEFT:I = 0x0

.field public static final whitelist POSITION_TOP_RIGHT:I = 0x1


# instance fields
.field private final blacklist mCenter:Landroid/graphics/Point;

.field private final blacklist mPosition:I

.field private final blacklist mRadius:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/RoundedCorner$1;

    invoke-direct {v0}, Landroid/view/RoundedCorner$1;-><init>()V

    sput-object v0, Landroid/view/RoundedCorner;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/view/RoundedCorner;->mPosition:I

    const/4 p1, 0x0

    iput p1, p0, Landroid/view/RoundedCorner;->mRadius:I

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Landroid/view/RoundedCorner;->mCenter:Landroid/graphics/Point;

    return-void
.end method

.method public constructor whitelist <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/view/RoundedCorner;->mPosition:I

    iput p2, p0, Landroid/view/RoundedCorner;->mRadius:I

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, p3, p4}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Landroid/view/RoundedCorner;->mCenter:Landroid/graphics/Point;

    return-void
.end method

.method constructor blacklist <init>(Landroid/view/RoundedCorner;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/view/RoundedCorner;->getPosition()I

    move-result v0

    iput v0, p0, Landroid/view/RoundedCorner;->mPosition:I

    invoke-virtual {p1}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v0

    iput v0, p0, Landroid/view/RoundedCorner;->mRadius:I

    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/RoundedCorner;->getCenter()Landroid/graphics/Point;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v0, p0, Landroid/view/RoundedCorner;->mCenter:Landroid/graphics/Point;

    return-void
.end method

.method private blacklist getPositionString(I)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    const-string p0, "Invalid"

    return-object p0

    :cond_0
    const-string p0, "BottomLeft"

    return-object p0

    :cond_1
    const-string p0, "BottomRight"

    return-object p0

    :cond_2
    const-string p0, "TopRight"

    return-object p0

    :cond_3
    const-string p0, "TopLeft"

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

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/view/RoundedCorner;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Landroid/view/RoundedCorner;

    iget v1, p0, Landroid/view/RoundedCorner;->mPosition:I

    iget v3, p1, Landroid/view/RoundedCorner;->mPosition:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Landroid/view/RoundedCorner;->mRadius:I

    iget v3, p1, Landroid/view/RoundedCorner;->mRadius:I

    if-ne v1, v3, :cond_1

    iget-object p0, p0, Landroid/view/RoundedCorner;->mCenter:Landroid/graphics/Point;

    iget-object p1, p1, Landroid/view/RoundedCorner;->mCenter:Landroid/graphics/Point;

    invoke-virtual {p0, p1}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public whitelist getCenter()Landroid/graphics/Point;
    .locals 1

    new-instance v0, Landroid/graphics/Point;

    iget-object p0, p0, Landroid/view/RoundedCorner;->mCenter:Landroid/graphics/Point;

    invoke-direct {v0, p0}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    return-object v0
.end method

.method public whitelist getPosition()I
    .locals 0

    iget p0, p0, Landroid/view/RoundedCorner;->mPosition:I

    return p0
.end method

.method public whitelist getRadius()I
    .locals 0

    iget p0, p0, Landroid/view/RoundedCorner;->mRadius:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget v0, p0, Landroid/view/RoundedCorner;->mPosition:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/view/RoundedCorner;->mRadius:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroid/view/RoundedCorner;->mCenter:Landroid/graphics/Point;

    invoke-virtual {p0}, Landroid/graphics/Point;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public blacklist isEmpty()Z
    .locals 1

    iget v0, p0, Landroid/view/RoundedCorner;->mRadius:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/RoundedCorner;->mCenter:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-lez v0, :cond_1

    iget-object p0, p0, Landroid/view/RoundedCorner;->mCenter:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RoundedCorner{position="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/view/RoundedCorner;->mPosition:I

    invoke-direct {p0, v1}, Landroid/view/RoundedCorner;->getPositionString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/RoundedCorner;->mRadius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", center="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/view/RoundedCorner;->mCenter:Landroid/graphics/Point;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/view/RoundedCorner;->mPosition:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/view/RoundedCorner;->mRadius:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/view/RoundedCorner;->mCenter:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Landroid/view/RoundedCorner;->mCenter:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
