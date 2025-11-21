.class public final Landroid/app/slice/SliceSpec;
.super Ljava/lang/Object;
.source "SliceSpec.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/slice/SliceSpec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mRevision:I

.field private final greylist-max-o mType:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/slice/SliceSpec$1;

    invoke-direct {v0}, Landroid/app/slice/SliceSpec$1;-><init>()V

    sput-object v0, Landroid/app/slice/SliceSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/slice/SliceSpec;->mType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/app/slice/SliceSpec;->mRevision:I

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/slice/SliceSpec;->mType:Ljava/lang/String;

    iput p2, p0, Landroid/app/slice/SliceSpec;->mRevision:I

    return-void
.end method


# virtual methods
.method public whitelist canRender(Landroid/app/slice/SliceSpec;)Z
    .locals 2

    iget-object v0, p0, Landroid/app/slice/SliceSpec;->mType:Ljava/lang/String;

    iget-object v1, p1, Landroid/app/slice/SliceSpec;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget p0, p0, Landroid/app/slice/SliceSpec;->mRevision:I

    iget p1, p1, Landroid/app/slice/SliceSpec;->mRevision:I

    if-lt p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Landroid/app/slice/SliceSpec;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroid/app/slice/SliceSpec;

    iget-object v0, p0, Landroid/app/slice/SliceSpec;->mType:Ljava/lang/String;

    iget-object v2, p1, Landroid/app/slice/SliceSpec;->mType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p0, p0, Landroid/app/slice/SliceSpec;->mRevision:I

    iget p1, p1, Landroid/app/slice/SliceSpec;->mRevision:I

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public whitelist getRevision()I
    .locals 0

    iget p0, p0, Landroid/app/slice/SliceSpec;->mRevision:I

    return p0
.end method

.method public whitelist getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/slice/SliceSpec;->mType:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/slice/SliceSpec;->mType:Ljava/lang/String;

    iget p0, p0, Landroid/app/slice/SliceSpec;->mRevision:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "SliceSpec{%s,%d}"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Landroid/app/slice/SliceSpec;->mType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p0, p0, Landroid/app/slice/SliceSpec;->mRevision:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
