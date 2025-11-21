.class Landroid/content/pm/FeatureGroupInfo$1;
.super Ljava/lang/Object;
.source "FeatureGroupInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/FeatureGroupInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/content/pm/FeatureGroupInfo;",
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
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/FeatureGroupInfo;
    .locals 1

    new-instance p0, Landroid/content/pm/FeatureGroupInfo;

    invoke-direct {p0}, Landroid/content/pm/FeatureGroupInfo;-><init>()V

    sget-object v0, Landroid/content/pm/FeatureInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/pm/FeatureInfo;

    iput-object p1, p0, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

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

    invoke-virtual {p0, p1}, Landroid/content/pm/FeatureGroupInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/FeatureGroupInfo;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Landroid/content/pm/FeatureGroupInfo;
    .locals 0

    new-array p0, p1, [Landroid/content/pm/FeatureGroupInfo;

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

    invoke-virtual {p0, p1}, Landroid/content/pm/FeatureGroupInfo$1;->newArray(I)[Landroid/content/pm/FeatureGroupInfo;

    move-result-object p0

    return-object p0
.end method
