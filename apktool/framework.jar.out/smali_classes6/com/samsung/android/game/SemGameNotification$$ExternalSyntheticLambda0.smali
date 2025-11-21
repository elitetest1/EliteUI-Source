.class public final synthetic Lcom/samsung/android/game/SemGameNotification$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/game/SemGameNotification$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(I)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/game/SemGameNotification$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Integer;

    invoke-static {p0, p1}, Lcom/samsung/android/game/SemGameNotification;->lambda$isValidGameEvent$0(Ljava/lang/Integer;I)Z

    move-result p0

    return p0
.end method
