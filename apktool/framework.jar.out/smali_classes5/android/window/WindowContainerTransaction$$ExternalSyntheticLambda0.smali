.class public final synthetic Landroid/window/WindowContainerTransaction$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroid/window/WindowContainerTransaction$Change;

    invoke-static {p1}, Landroid/window/WindowContainerTransaction;->lambda$hasChangeTransitMode$0(Landroid/window/WindowContainerTransaction$Change;)Z

    move-result p0

    return p0
.end method
