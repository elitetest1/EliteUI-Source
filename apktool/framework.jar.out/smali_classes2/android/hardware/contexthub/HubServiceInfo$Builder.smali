.class public final Landroid/hardware/contexthub/HubServiceInfo$Builder;
.super Ljava/lang/Object;
.source "HubServiceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contexthub/HubServiceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mFormat:I

.field private final blacklist mMajorVersion:I

.field private final blacklist mMinorVersion:I

.field private final blacklist mServiceDescriptor:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid format type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput p2, p0, Landroid/hardware/contexthub/HubServiceInfo$Builder;->mFormat:I

    if-ltz p3, :cond_4

    iput p3, p0, Landroid/hardware/contexthub/HubServiceInfo$Builder;->mMajorVersion:I

    if-ltz p4, :cond_3

    iput p4, p0, Landroid/hardware/contexthub/HubServiceInfo$Builder;->mMinorVersion:I

    invoke-virtual {p1}, Ljava/lang/String;->isBlank()Z

    move-result p2

    if-nez p2, :cond_2

    iput-object p1, p0, Landroid/hardware/contexthub/HubServiceInfo$Builder;->mServiceDescriptor:Ljava/lang/String;

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid service descriptor."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Minor version cannot be set to negative number."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Major version cannot be set to negative number."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public whitelist build()Landroid/hardware/contexthub/HubServiceInfo;
    .locals 4

    iget v0, p0, Landroid/hardware/contexthub/HubServiceInfo$Builder;->mMajorVersion:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/hardware/contexthub/HubServiceInfo$Builder;->mMinorVersion:I

    if-ltz v0, :cond_0

    new-instance v0, Landroid/hardware/contexthub/HubServiceInfo;

    iget-object v1, p0, Landroid/hardware/contexthub/HubServiceInfo$Builder;->mServiceDescriptor:Ljava/lang/String;

    iget v2, p0, Landroid/hardware/contexthub/HubServiceInfo$Builder;->mFormat:I

    iget v3, p0, Landroid/hardware/contexthub/HubServiceInfo$Builder;->mMajorVersion:I

    iget p0, p0, Landroid/hardware/contexthub/HubServiceInfo$Builder;->mMinorVersion:I

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/hardware/contexthub/HubServiceInfo;-><init>(Ljava/lang/String;III)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Major and minor version must be set."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
