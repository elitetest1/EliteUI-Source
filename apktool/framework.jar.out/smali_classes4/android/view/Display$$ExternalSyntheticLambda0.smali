.class public final synthetic Landroid/view/Display$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/Display;

.field public final synthetic blacklist f$1:Lcom/samsung/android/hardware/display/RefreshRateConfig;

.field public final synthetic blacklist f$2:Landroid/view/Display$Mode;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/Display;Lcom/samsung/android/hardware/display/RefreshRateConfig;Landroid/view/Display$Mode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/Display$$ExternalSyntheticLambda0;->f$0:Landroid/view/Display;

    iput-object p2, p0, Landroid/view/Display$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    iput-object p3, p0, Landroid/view/Display$$ExternalSyntheticLambda0;->f$2:Landroid/view/Display$Mode;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Landroid/view/Display$$ExternalSyntheticLambda0;->f$0:Landroid/view/Display;

    iget-object v1, p0, Landroid/view/Display$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    iget-object p0, p0, Landroid/view/Display$$ExternalSyntheticLambda0;->f$2:Landroid/view/Display$Mode;

    check-cast p1, Landroid/view/Display$Mode;

    invoke-static {v0, v1, p0, p1}, Landroid/view/Display;->$r8$lambda$wbKfzEEDY0d_r4tWpuvsY84kwKE(Landroid/view/Display;Lcom/samsung/android/hardware/display/RefreshRateConfig;Landroid/view/Display$Mode;Landroid/view/Display$Mode;)Z

    move-result p0

    return p0
.end method
