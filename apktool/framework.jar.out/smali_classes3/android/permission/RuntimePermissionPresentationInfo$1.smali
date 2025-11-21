.class Landroid/permission/RuntimePermissionPresentationInfo$1;
.super Ljava/lang/Object;
.source "RuntimePermissionPresentationInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/permission/RuntimePermissionPresentationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/permission/RuntimePermissionPresentationInfo;",
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
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/permission/RuntimePermissionPresentationInfo;
    .locals 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    new-instance v0, Landroid/permission/RuntimePermissionPresentationInfo;

    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    move v2, v3

    :cond_1
    invoke-direct {v0, p0, v1, v2}, Landroid/permission/RuntimePermissionPresentationInfo;-><init>(Ljava/lang/CharSequence;ZZ)V

    return-object v0
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

    invoke-virtual {p0, p1}, Landroid/permission/RuntimePermissionPresentationInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/permission/RuntimePermissionPresentationInfo;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Landroid/permission/RuntimePermissionPresentationInfo;
    .locals 0

    new-array p0, p1, [Landroid/permission/RuntimePermissionPresentationInfo;

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

    invoke-virtual {p0, p1}, Landroid/permission/RuntimePermissionPresentationInfo$1;->newArray(I)[Landroid/permission/RuntimePermissionPresentationInfo;

    move-result-object p0

    return-object p0
.end method
