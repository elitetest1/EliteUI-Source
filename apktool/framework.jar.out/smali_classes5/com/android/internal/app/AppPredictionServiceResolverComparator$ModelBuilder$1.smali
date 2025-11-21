.class Lcom/android/internal/app/AppPredictionServiceResolverComparator$ModelBuilder$1;
.super Ljava/lang/Object;
.source "AppPredictionServiceResolverComparator.java"

# interfaces
.implements Lcom/android/internal/app/ResolverComparatorModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/AppPredictionServiceResolverComparator$ModelBuilder;->adaptLegacyResolverComparatorToComparatorModel(Lcom/android/internal/app/AbstractResolverComparator;)Lcom/android/internal/app/ResolverComparatorModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$comparator:Lcom/android/internal/app/AbstractResolverComparator;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/AppPredictionServiceResolverComparator$ModelBuilder;Lcom/android/internal/app/AbstractResolverComparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator$ModelBuilder$1;->val$comparator:Lcom/android/internal/app/AbstractResolverComparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$getComparator$0(Lcom/android/internal/app/AbstractResolverComparator;Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/AbstractResolverComparator;->compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public blacklist getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator$ModelBuilder$1;->val$comparator:Lcom/android/internal/app/AbstractResolverComparator;

    new-instance v0, Lcom/android/internal/app/AppPredictionServiceResolverComparator$ModelBuilder$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/internal/app/AppPredictionServiceResolverComparator$ModelBuilder$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/AbstractResolverComparator;)V

    return-object v0
.end method

.method public blacklist getScore(Lcom/android/internal/app/chooser/TargetInfo;)F
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator$ModelBuilder$1;->val$comparator:Lcom/android/internal/app/AbstractResolverComparator;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/AbstractResolverComparator;->getScore(Lcom/android/internal/app/chooser/TargetInfo;)F

    move-result p0

    return p0
.end method

.method public blacklist notifyOnTargetSelected(Lcom/android/internal/app/chooser/TargetInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator$ModelBuilder$1;->val$comparator:Lcom/android/internal/app/AbstractResolverComparator;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/AbstractResolverComparator;->updateModel(Lcom/android/internal/app/chooser/TargetInfo;)V

    return-void
.end method
