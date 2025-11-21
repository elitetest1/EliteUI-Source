.class public final Landroid/graphics/HardwareBufferRenderer$RenderResult;
.super Ljava/lang/Object;
.source "HardwareBufferRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/HardwareBufferRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RenderResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/HardwareBufferRenderer$RenderResult$RenderResultStatus;
    }
.end annotation


# static fields
.field public static final whitelist ERROR_UNKNOWN:I = 0x1

.field public static final whitelist SUCCESS:I


# instance fields
.field private final blacklist mFence:Landroid/hardware/SyncFence;

.field private final blacklist mResultStatus:I


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/SyncFence;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/graphics/HardwareBufferRenderer$RenderResult;->mFence:Landroid/hardware/SyncFence;

    iput p2, p0, Landroid/graphics/HardwareBufferRenderer$RenderResult;->mResultStatus:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/SyncFence;ILandroid/graphics/HardwareBufferRenderer-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/graphics/HardwareBufferRenderer$RenderResult;-><init>(Landroid/hardware/SyncFence;I)V

    return-void
.end method


# virtual methods
.method public whitelist getFence()Landroid/hardware/SyncFence;
    .locals 0

    iget-object p0, p0, Landroid/graphics/HardwareBufferRenderer$RenderResult;->mFence:Landroid/hardware/SyncFence;

    return-object p0
.end method

.method public whitelist getStatus()I
    .locals 0

    iget p0, p0, Landroid/graphics/HardwareBufferRenderer$RenderResult;->mResultStatus:I

    return p0
.end method
