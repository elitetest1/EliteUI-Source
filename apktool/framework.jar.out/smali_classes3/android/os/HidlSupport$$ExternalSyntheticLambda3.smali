.class public final synthetic Landroid/os/HidlSupport$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/Iterator;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/Iterator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/HidlSupport$$ExternalSyntheticLambda3;->f$0:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Landroid/os/HidlSupport$$ExternalSyntheticLambda3;->f$0:Ljava/util/Iterator;

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->lambda$deepEquals$1(Ljava/util/Iterator;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
