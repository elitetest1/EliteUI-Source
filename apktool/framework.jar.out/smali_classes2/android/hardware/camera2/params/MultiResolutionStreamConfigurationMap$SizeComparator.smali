.class public Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap$SizeComparator;
.super Ljava/lang/Object;
.source "MultiResolutionStreamConfigurationMap.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SizeComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/hardware/camera2/params/MultiResolutionStreamInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist compare(Landroid/hardware/camera2/params/MultiResolutionStreamInfo;Landroid/hardware/camera2/params/MultiResolutionStreamInfo;)I
    .locals 1

    invoke-virtual {p1}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getHeight()I

    move-result p1

    invoke-virtual {p2}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getHeight()I

    move-result p2

    invoke-static {p0, p1, v0, p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->compareSizes(IIII)I

    move-result p0

    return p0
.end method

.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    check-cast p1, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    check-cast p2, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap$SizeComparator;->compare(Landroid/hardware/camera2/params/MultiResolutionStreamInfo;Landroid/hardware/camera2/params/MultiResolutionStreamInfo;)I

    move-result p0

    return p0
.end method
