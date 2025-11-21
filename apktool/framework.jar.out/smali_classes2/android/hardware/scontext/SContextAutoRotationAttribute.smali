.class public Landroid/hardware/scontext/SContextAutoRotationAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextAutoRotationAttribute.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SContextAutoRotationAttribute"


# instance fields
.field private blacklist mDeviceType:I


# direct methods
.method constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/scontext/SContextAutoRotationAttribute;->mDeviceType:I

    invoke-direct {p0}, Landroid/hardware/scontext/SContextAutoRotationAttribute;->setAttribute()V

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    iput p1, p0, Landroid/hardware/scontext/SContextAutoRotationAttribute;->mDeviceType:I

    invoke-direct {p0}, Landroid/hardware/scontext/SContextAutoRotationAttribute;->setAttribute()V

    return-void
.end method

.method private blacklist setAttribute()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "device_type"

    iget v2, p0, Landroid/hardware/scontext/SContextAutoRotationAttribute;->mDeviceType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x6

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public blacklist checkAttribute()Z
    .locals 1

    iget p0, p0, Landroid/hardware/scontext/SContextAutoRotationAttribute;->mDeviceType:I

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-string p0, "SContextAutoRotationAttribute"

    const-string v0, "The device type is wrong."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
