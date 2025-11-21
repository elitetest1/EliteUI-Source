.class public Landroid/media/audio/common/Spatialization;
.super Ljava/lang/Object;
.source "Spatialization.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audio/common/Spatialization$Mode;,
        Landroid/media/audio/common/Spatialization$Level;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/audio/common/Spatialization;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/audio/common/Spatialization$1;

    invoke-direct {v0}, Landroid/media/audio/common/Spatialization$1;-><init>()V

    sput-object v0, Landroid/media/audio/common/Spatialization;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    if-nez p1, :cond_1

    return p0

    :cond_1
    instance-of v1, p1, Landroid/media/audio/common/Spatialization;

    if-nez v1, :cond_2

    return p0

    :cond_2
    check-cast p1, Landroid/media/audio/common/Spatialization;

    return v0
.end method

.method public final whitelist getStability()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 5

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x4

    const-string v2, "Overflow in the size of parcelable"

    const v3, 0x7fffffff

    if-lt v0, v1, :cond_1

    sub-int/2addr v3, v0

    if-gt p0, v3, :cond_0

    add-int/2addr p0, v0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_0
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :try_start_0
    new-instance v1, Landroid/os/BadParcelableException;

    const-string v4, "Parcelable too small"

    invoke-direct {v1, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    sub-int/2addr v3, v0

    if-le p0, v3, :cond_2

    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    add-int/2addr p0, v0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    throw v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance p0, Ljava/util/StringJoiner;

    const-string v0, "{"

    const-string v1, "}"

    const-string v2, ", "

    invoke-direct {p0, v2, v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Spatialization"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p0, p2, p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
