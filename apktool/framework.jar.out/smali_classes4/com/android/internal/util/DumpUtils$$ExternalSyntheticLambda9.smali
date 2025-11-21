.class public final synthetic Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:I

.field public final synthetic blacklist f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda9;->f$0:I

    iput-object p2, p0, Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda9;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda9;->f$0:I

    iget-object p0, p0, Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda9;->f$1:Ljava/lang/String;

    check-cast p1, Landroid/content/ComponentName$WithComponentName;

    invoke-static {v0, p0, p1}, Lcom/android/internal/util/DumpUtils;->lambda$filterRecord$2(ILjava/lang/String;Landroid/content/ComponentName$WithComponentName;)Z

    move-result p0

    return p0
.end method
