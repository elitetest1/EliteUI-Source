.class public Landroid/view/InsetsSourceControl$Array;
.super Ljava/lang/Object;
.source "InsetsSourceControl.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InsetsSourceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Array"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/InsetsSourceControl$Array;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mControls:[Landroid/view/InsetsSourceControl;

.field private blacklist mSeq:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/InsetsSourceControl$Array$1;

    invoke-direct {v0}, Landroid/view/InsetsSourceControl$Array$1;-><init>()V

    sput-object v0, Landroid/view/InsetsSourceControl$Array;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/util/SequenceUtils;->getInitSeq()I

    move-result v0

    iput v0, p0, Landroid/view/InsetsSourceControl$Array;->mSeq:I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/util/SequenceUtils;->getInitSeq()I

    move-result v0

    iput v0, p0, Landroid/view/InsetsSourceControl$Array;->mSeq:I

    invoke-virtual {p0, p1}, Landroid/view/InsetsSourceControl$Array;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/InsetsSourceControl$Array;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/util/SequenceUtils;->getInitSeq()I

    move-result v0

    iput v0, p0, Landroid/view/InsetsSourceControl$Array;->mSeq:I

    invoke-virtual {p0, p1, p2}, Landroid/view/InsetsSourceControl$Array;->setTo(Landroid/view/InsetsSourceControl$Array;Z)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroid/view/InsetsSourceControl$Array;

    iget-object p0, p0, Landroid/view/InsetsSourceControl$Array;->mControls:[Landroid/view/InsetsSourceControl;

    iget-object p1, p1, Landroid/view/InsetsSourceControl$Array;->mControls:[Landroid/view/InsetsSourceControl;

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist get()[Landroid/view/InsetsSourceControl;
    .locals 0

    iget-object p0, p0, Landroid/view/InsetsSourceControl$Array;->mControls:[Landroid/view/InsetsSourceControl;

    return-object p0
.end method

.method public blacklist getSeq()I
    .locals 0

    iget p0, p0, Landroid/view/InsetsSourceControl$Array;->mSeq:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 0

    iget-object p0, p0, Landroid/view/InsetsSourceControl$Array;->mControls:[Landroid/view/InsetsSourceControl;

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    sget-object v0, Landroid/view/InsetsSourceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/InsetsSourceControl;

    iput-object v0, p0, Landroid/view/InsetsSourceControl$Array;->mControls:[Landroid/view/InsetsSourceControl;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/view/InsetsSourceControl$Array;->mSeq:I

    return-void
.end method

.method public blacklist release()V
    .locals 4

    iget-object p0, p0, Landroid/view/InsetsSourceControl$Array;->mControls:[Landroid/view/InsetsSourceControl;

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    if-eqz v2, :cond_1

    new-instance v3, Landroid/view/InsetsController$$ExternalSyntheticLambda8;

    invoke-direct {v3}, Landroid/view/InsetsController$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/InsetsSourceControl;->release(Ljava/util/function/Consumer;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public blacklist set([Landroid/view/InsetsSourceControl;Z)V
    .locals 3

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    array-length p2, p1

    new-array p2, p2, [Landroid/view/InsetsSourceControl;

    iput-object p2, p0, Landroid/view/InsetsSourceControl$Array;->mControls:[Landroid/view/InsetsSourceControl;

    array-length p2, p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_2

    aget-object v0, p1, p2

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/InsetsSourceControl$Array;->mControls:[Landroid/view/InsetsSourceControl;

    new-instance v1, Landroid/view/InsetsSourceControl;

    aget-object v2, p1, p2

    invoke-direct {v1, v2}, Landroid/view/InsetsSourceControl;-><init>(Landroid/view/InsetsSourceControl;)V

    aput-object v1, v0, p2

    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_1
    iput-object p1, p0, Landroid/view/InsetsSourceControl$Array;->mControls:[Landroid/view/InsetsSourceControl;

    return-void
.end method

.method public blacklist setParcelableFlags(I)V
    .locals 3

    iget-object p0, p0, Landroid/view/InsetsSourceControl$Array;->mControls:[Landroid/view/InsetsSourceControl;

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Landroid/view/InsetsSourceControl;->setParcelableFlags(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public blacklist setSeq(I)V
    .locals 0

    iput p1, p0, Landroid/view/InsetsSourceControl$Array;->mSeq:I

    return-void
.end method

.method public blacklist setTo(Landroid/view/InsetsSourceControl$Array;Z)V
    .locals 1

    iget-object v0, p1, Landroid/view/InsetsSourceControl$Array;->mControls:[Landroid/view/InsetsSourceControl;

    invoke-virtual {p0, v0, p2}, Landroid/view/InsetsSourceControl$Array;->set([Landroid/view/InsetsSourceControl;Z)V

    iget p1, p1, Landroid/view/InsetsSourceControl$Array;->mSeq:I

    iput p1, p0, Landroid/view/InsetsSourceControl$Array;->mSeq:I

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsSourceControl$Array;->mControls:[Landroid/view/InsetsSourceControl;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget p0, p0, Landroid/view/InsetsSourceControl$Array;->mSeq:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
