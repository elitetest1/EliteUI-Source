.class public final synthetic Lcom/samsung/android/sume/core/types/nn/NNFW$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/types/nn/NNFW$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sume/core/types/nn/NNFW$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/sume/core/types/nn/NNFW;->lambda$fromExtension$1(Ljava/lang/String;)Ljava/security/InvalidParameterException;

    move-result-object p0

    return-object p0
.end method
