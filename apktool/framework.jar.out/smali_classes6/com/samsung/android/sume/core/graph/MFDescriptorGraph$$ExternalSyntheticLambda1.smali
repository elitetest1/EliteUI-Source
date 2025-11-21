.class public final synthetic Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/graph/MFGraphUnitFactory;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/graph/MFGraphUnitFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/sume/core/graph/MFGraphUnitFactory;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/sume/core/graph/MFGraphUnitFactory;

    check-cast p1, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;

    invoke-static {p0, p1}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;->lambda$toMediaFilterGraph$2(Lcom/samsung/android/sume/core/graph/MFGraphUnitFactory;Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method
