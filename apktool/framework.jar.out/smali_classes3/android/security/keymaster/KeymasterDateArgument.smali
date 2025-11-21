.class Landroid/security/keymaster/KeymasterDateArgument;
.super Landroid/security/keymaster/KeymasterArgument;
.source "KeymasterDateArgument.java"


# instance fields
.field public final blacklist date:Ljava/util/Date;


# direct methods
.method public constructor greylist-max-r <init>(ILandroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/security/keymaster/KeymasterArgument;-><init>(I)V

    new-instance p1, Ljava/util/Date;

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object p1, p0, Landroid/security/keymaster/KeymasterDateArgument;->date:Ljava/util/Date;

    return-void
.end method

.method public constructor blacklist <init>(ILjava/util/Date;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/security/keymaster/KeymasterArgument;-><init>(I)V

    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    move-result v0

    const/high16 v1, 0x60000000

    if-ne v0, v1, :cond_0

    iput-object p2, p0, Landroid/security/keymaster/KeymasterDateArgument;->date:Ljava/util/Date;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Bad date tag "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist writeValue(Landroid/os/Parcel;)V
    .locals 2

    iget-object p0, p0, Landroid/security/keymaster/KeymasterDateArgument;->date:Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
