.class public final synthetic Landroid/hardware/input/InputManagerGlobal$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/input/InputManager$StickyModifierStateListener;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/input/InputManager$StickyModifierStateListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/input/InputManagerGlobal$$ExternalSyntheticLambda2;->f$0:Landroid/hardware/input/InputManager$StickyModifierStateListener;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal$$ExternalSyntheticLambda2;->f$0:Landroid/hardware/input/InputManager$StickyModifierStateListener;

    check-cast p1, Landroid/hardware/input/InputManagerGlobal$StickyModifierStateListenerDelegate;

    invoke-static {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->lambda$unregisterStickyModifierStateListener$2(Landroid/hardware/input/InputManager$StickyModifierStateListener;Landroid/hardware/input/InputManagerGlobal$StickyModifierStateListenerDelegate;)Z

    move-result p0

    return p0
.end method
