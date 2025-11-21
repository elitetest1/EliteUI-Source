.class public Landroid/window/BackAnimationAdapter;
.super Ljava/lang/Object;
.source "BackAnimationAdapter.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/BackAnimationAdapter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist mOriginDisplayId:I

.field private final blacklist mRunner:Landroid/window/IBackAnimationRunner;

.field private blacklist mSupportedAnimators:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/window/BackAnimationAdapter$1;

    invoke-direct {v0}, Landroid/window/BackAnimationAdapter$1;-><init>()V

    sput-object v0, Landroid/window/BackAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/window/BackAnimationAdapter;->mOriginDisplayId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/window/IBackAnimationRunner$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IBackAnimationRunner;

    move-result-object v0

    iput-object v0, p0, Landroid/window/BackAnimationAdapter;->mRunner:Landroid/window/IBackAnimationRunner;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/window/BackAnimationAdapter;->mSupportedAnimators:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/window/BackAnimationAdapter;->mOriginDisplayId:I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/window/IBackAnimationRunner;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/window/BackAnimationAdapter;->mOriginDisplayId:I

    iput-object p1, p0, Landroid/window/BackAnimationAdapter;->mRunner:Landroid/window/IBackAnimationRunner;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getRunner()Landroid/window/IBackAnimationRunner;
    .locals 0

    iget-object p0, p0, Landroid/window/BackAnimationAdapter;->mRunner:Landroid/window/IBackAnimationRunner;

    return-object p0
.end method

.method public blacklist isAnimatable(I)Z
    .locals 4

    iget-object v0, p0, Landroid/window/BackAnimationAdapter;->mSupportedAnimators:[I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    array-length v0, v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_2

    iget-object v3, p0, Landroid/window/BackAnimationAdapter;->mSupportedAnimators:[I

    aget v3, v3, v0

    if-ne p1, v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public blacklist updateSupportedAnimators(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/window/BackAnimationAdapter;->mSupportedAnimators:[I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/window/BackAnimationAdapter;->mSupportedAnimators:[I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Landroid/window/BackAnimationAdapter;->mRunner:Landroid/window/IBackAnimationRunner;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    iget-object p2, p0, Landroid/window/BackAnimationAdapter;->mSupportedAnimators:[I

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/window/BackAnimationAdapter;->mSupportedAnimators:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    iget p0, p0, Landroid/window/BackAnimationAdapter;->mOriginDisplayId:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
