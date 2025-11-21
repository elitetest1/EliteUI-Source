.class Landroid/service/settings/preferences/MetadataResult$1;
.super Ljava/lang/Object;
.source "MetadataResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/settings/preferences/MetadataResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/settings/preferences/MetadataResult;",
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
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/service/settings/preferences/MetadataResult;
    .locals 1

    new-instance p0, Landroid/service/settings/preferences/MetadataResult;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/service/settings/preferences/MetadataResult;-><init>(Landroid/os/Parcel;Landroid/service/settings/preferences/MetadataResult-IA;)V

    return-object p0
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

    invoke-virtual {p0, p1}, Landroid/service/settings/preferences/MetadataResult$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/settings/preferences/MetadataResult;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Landroid/service/settings/preferences/MetadataResult;
    .locals 0

    new-array p0, p1, [Landroid/service/settings/preferences/MetadataResult;

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

    invoke-virtual {p0, p1}, Landroid/service/settings/preferences/MetadataResult$1;->newArray(I)[Landroid/service/settings/preferences/MetadataResult;

    move-result-object p0

    return-object p0
.end method
