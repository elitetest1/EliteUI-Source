.class public final Landroid/companion/DeviceId$Builder;
.super Ljava/lang/Object;
.source "DeviceId.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/DeviceId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCustomId:Ljava/lang/String;

.field private blacklist mMacAddress:Landroid/net/MacAddress;


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/companion/DeviceId;
    .locals 2

    iget-object v0, p0, Landroid/companion/DeviceId$Builder;->mCustomId:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/companion/DeviceId$Builder;->mMacAddress:Landroid/net/MacAddress;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "At least one device id property must benon-null to build a DeviceId."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance v0, Landroid/companion/DeviceId;

    iget-object v1, p0, Landroid/companion/DeviceId$Builder;->mCustomId:Ljava/lang/String;

    iget-object p0, p0, Landroid/companion/DeviceId$Builder;->mMacAddress:Landroid/net/MacAddress;

    invoke-direct {v0, v1, p0}, Landroid/companion/DeviceId;-><init>(Ljava/lang/String;Landroid/net/MacAddress;)V

    return-object v0
.end method

.method public whitelist setCustomId(Ljava/lang/String;)Landroid/companion/DeviceId$Builder;
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x400

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Length of the custom id must be at most 1024 characters"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput-object p1, p0, Landroid/companion/DeviceId$Builder;->mCustomId:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setMacAddress(Landroid/net/MacAddress;)Landroid/companion/DeviceId$Builder;
    .locals 0

    iput-object p1, p0, Landroid/companion/DeviceId$Builder;->mMacAddress:Landroid/net/MacAddress;

    return-object p0
.end method
