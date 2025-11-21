.class Landroid/security/keymaster/KeymasterLongArgument;
.super Landroid/security/keymaster/KeymasterArgument;
.source "KeymasterLongArgument.java"


# instance fields
.field public final greylist-max-r value:J


# direct methods
.method public constructor greylist-max-r <init>(IJ)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/security/keymaster/KeymasterArgument;-><init>(I)V

    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    move-result v0

    const/high16 v1, -0x60000000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x50000000

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Bad long tag "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput-wide p2, p0, Landroid/security/keymaster/KeymasterLongArgument;->value:J

    return-void
.end method

.method public constructor greylist-max-r <init>(ILandroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/security/keymaster/KeymasterArgument;-><init>(I)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    iput-wide p1, p0, Landroid/security/keymaster/KeymasterLongArgument;->value:J

    return-void
.end method


# virtual methods
.method public blacklist writeValue(Landroid/os/Parcel;)V
    .locals 2

    iget-wide v0, p0, Landroid/security/keymaster/KeymasterLongArgument;->value:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
