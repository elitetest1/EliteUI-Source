.class public final synthetic Lcom/samsung/android/sume/core/filter/DecoderFilter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/filter/DecoderFilter;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/filter/DecoderFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/DecoderFilter$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/core/filter/DecoderFilter;

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sume/core/filter/DecoderFilter$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/core/filter/DecoderFilter;

    invoke-static {p0}, Lcom/samsung/android/sume/core/filter/DecoderFilter;->$r8$lambda$6Sgpc4x8fF8JhQ_bIZDedz3pEoE(Lcom/samsung/android/sume/core/filter/DecoderFilter;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object p0

    return-object p0
.end method
