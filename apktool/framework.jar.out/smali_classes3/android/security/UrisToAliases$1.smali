.class Landroid/security/UrisToAliases$1;
.super Ljava/lang/Object;
.source "UrisToAliases.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/UrisToAliases;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/security/UrisToAliases;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/security/UrisToAliases;
    .locals 1

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    new-instance p1, Landroid/security/UrisToAliases;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroid/security/UrisToAliases;-><init>(Ljava/util/Map;Landroid/security/UrisToAliases-IA;)V

    return-object p1
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/security/UrisToAliases$1;->createFromParcel(Landroid/os/Parcel;)Landroid/security/UrisToAliases;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Landroid/security/UrisToAliases;
    .locals 0

    new-array p0, p1, [Landroid/security/UrisToAliases;

    return-object p0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/security/UrisToAliases$1;->newArray(I)[Landroid/security/UrisToAliases;

    move-result-object p0

    return-object p0
.end method
