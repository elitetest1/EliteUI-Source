.class public Landroid/content/pm/PackageParserCacheHelper$ReadHelper;
.super Landroid/os/Parcel$ReadWriteHelper;
.source "PackageParserCacheHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParserCacheHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReadHelper"
.end annotation


# instance fields
.field private final greylist-max-o mParcel:Landroid/os/Parcel;

.field private final greylist-max-o mStrings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Parcel$ReadWriteHelper;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;->mStrings:Ljava/util/ArrayList;

    iput-object p1, p0, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;->mParcel:Landroid/os/Parcel;

    return-void
.end method


# virtual methods
.method public greylist-max-o readString(Landroid/os/Parcel;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;->mStrings:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public blacklist readString16(Landroid/os/Parcel;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;->readString(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist readString8(Landroid/os/Parcel;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;->readString(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o startAndInstall()V
    .locals 3

    iget-object v0, p0, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;->mStrings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    iget-object v2, p0, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    iget-object v0, p0, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;->mParcel:Landroid/os/Parcel;

    iget-object v2, p0, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;->mStrings:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    iget-object v0, p0, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, p0}, Landroid/os/Parcel;->setReadWriteHelper(Landroid/os/Parcel$ReadWriteHelper;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid string pool position: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
