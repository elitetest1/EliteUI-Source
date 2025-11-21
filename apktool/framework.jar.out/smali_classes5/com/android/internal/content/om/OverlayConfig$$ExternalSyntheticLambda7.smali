.class public final synthetic Lcom/android/internal/content/om/OverlayConfig$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .locals 0

    new-instance p0, Lcom/android/internal/content/om/OverlayScanner;

    invoke-direct {p0}, Lcom/android/internal/content/om/OverlayScanner;-><init>()V

    return-object p0
.end method
