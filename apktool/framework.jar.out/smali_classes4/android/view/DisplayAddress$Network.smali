.class public final Landroid/view/DisplayAddress$Network;
.super Landroid/view/DisplayAddress;
.source "DisplayAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/DisplayAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Network"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/DisplayAddress$Network;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mMacAddress:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/DisplayAddress$Network$1;

    invoke-direct {v0}, Landroid/view/DisplayAddress$Network$1;-><init>()V

    sput-object v0, Landroid/view/DisplayAddress$Network;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/DisplayAddress;-><init>()V

    iput-object p1, p0, Landroid/view/DisplayAddress$Network;->mMacAddress:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Landroid/view/DisplayAddress-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/DisplayAddress$Network;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Landroid/view/DisplayAddress$Network;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/view/DisplayAddress$Network;->mMacAddress:Ljava/lang/String;

    check-cast p1, Landroid/view/DisplayAddress$Network;

    iget-object p1, p1, Landroid/view/DisplayAddress$Network;->mMacAddress:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 0

    iget-object p0, p0, Landroid/view/DisplayAddress$Network;->mMacAddress:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/view/DisplayAddress$Network;->mMacAddress:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p0, p0, Landroid/view/DisplayAddress$Network;->mMacAddress:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
