.class Landroid/permission/AdminPermissionControlParams$1;
.super Ljava/lang/Object;
.source "AdminPermissionControlParams.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/permission/AdminPermissionControlParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/permission/AdminPermissionControlParams;",
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
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/permission/AdminPermissionControlParams;
    .locals 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    new-instance v2, Landroid/permission/AdminPermissionControlParams;

    invoke-direct {v2, p0, v0, v1, p1}, Landroid/permission/AdminPermissionControlParams;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    return-object v2
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

    invoke-virtual {p0, p1}, Landroid/permission/AdminPermissionControlParams$1;->createFromParcel(Landroid/os/Parcel;)Landroid/permission/AdminPermissionControlParams;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Landroid/permission/AdminPermissionControlParams;
    .locals 0

    new-array p0, p1, [Landroid/permission/AdminPermissionControlParams;

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

    invoke-virtual {p0, p1}, Landroid/permission/AdminPermissionControlParams$1;->newArray(I)[Landroid/permission/AdminPermissionControlParams;

    move-result-object p0

    return-object p0
.end method
