.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsiblePriority;
.super Ljava/lang/Object;
.source "CollapsiblePriority.java"


# static fields
.field public static final blacklist HORIZONTAL:I = 0x0

.field public static final blacklist VERTICAL:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist getPriority(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;I)F
    .locals 1

    instance-of v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    const-class v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/CollapsiblePriorityModifierOperation;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->selfOrModifier(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/CollapsiblePriorityModifierOperation;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/CollapsiblePriorityModifierOperation;->getOrientation()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/CollapsiblePriorityModifierOperation;->getPriority()F

    move-result p0

    return p0

    :cond_0
    const p0, 0x7f7fffff    # Float.MAX_VALUE

    return p0
.end method

.method static synthetic blacklist lambda$sortWithPriorities$0(ILcom/android/internal/widget/remotecompose/core/operations/layout/Component;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)I
    .locals 0

    invoke-static {p1, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsiblePriority;->getPriority(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;I)F

    move-result p1

    invoke-static {p2, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsiblePriority;->getPriority(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;I)F

    move-result p0

    sub-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method static blacklist sortWithPriorities(Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;",
            ">;I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsiblePriority$$ExternalSyntheticLambda0;

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsiblePriority$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    return-object v0
.end method
