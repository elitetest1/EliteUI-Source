.class public final Landroid/app/admin/MostRecent;
.super Landroid/app/admin/ResolutionMechanism;
.source "MostRecent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/app/admin/ResolutionMechanism<",
        "TV;>;"
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/MostRecent<",
            "*>;>;"
        }
    .end annotation
.end field

.field public static final blacklist MOST_RECENT:Landroid/app/admin/MostRecent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/admin/MostRecent<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/admin/MostRecent;

    invoke-direct {v0}, Landroid/app/admin/MostRecent;-><init>()V

    sput-object v0, Landroid/app/admin/MostRecent;->MOST_RECENT:Landroid/app/admin/MostRecent;

    new-instance v0, Landroid/app/admin/MostRecent$1;

    invoke-direct {v0}, Landroid/app/admin/MostRecent$1;-><init>()V

    sput-object v0, Landroid/app/admin/MostRecent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/admin/ResolutionMechanism;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 0

    const-string p0, "MostRecent {}"

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    return-void
.end method
