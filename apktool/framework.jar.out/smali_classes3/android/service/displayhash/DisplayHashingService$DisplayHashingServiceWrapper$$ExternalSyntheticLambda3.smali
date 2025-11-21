.class public final synthetic Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/function/HexConsumer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    move-object p0, p1

    check-cast p0, Landroid/service/displayhash/DisplayHashingService;

    move-object p1, p2

    check-cast p1, [B

    move-object p2, p3

    check-cast p2, Landroid/hardware/HardwareBuffer;

    move-object p3, p4

    check-cast p3, Landroid/graphics/Rect;

    move-object p4, p5

    check-cast p4, Ljava/lang/String;

    move-object p5, p6

    check-cast p5, Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper$1;

    invoke-virtual/range {p0 .. p5}, Landroid/service/displayhash/DisplayHashingService;->onGenerateDisplayHash([BLandroid/hardware/HardwareBuffer;Landroid/graphics/Rect;Ljava/lang/String;Landroid/view/displayhash/DisplayHashResultCallback;)V

    return-void
.end method
