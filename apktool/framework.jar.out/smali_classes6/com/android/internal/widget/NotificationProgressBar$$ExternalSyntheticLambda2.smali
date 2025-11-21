.class public final synthetic Lcom/android/internal/widget/NotificationProgressBar$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:I


# direct methods
.method public synthetic constructor blacklist <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/widget/NotificationProgressBar$$ExternalSyntheticLambda2;->f$0:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/NotificationProgressBar$$ExternalSyntheticLambda2;->f$0:I

    check-cast p1, Landroid/app/Notification$ProgressStyle$Point;

    invoke-static {p0, p1}, Lcom/android/internal/widget/NotificationProgressBar;->lambda$processModelAndConvertToViewParts$1(ILandroid/app/Notification$ProgressStyle$Point;)Z

    move-result p0

    return p0
.end method
