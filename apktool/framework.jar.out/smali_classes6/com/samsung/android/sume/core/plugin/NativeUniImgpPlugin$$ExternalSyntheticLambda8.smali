.class public final synthetic Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/android/sume/core/functional/Operator;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin$$ExternalSyntheticLambda8;->f$0:Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;

    return-void
.end method


# virtual methods
.method public final blacklist run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin$$ExternalSyntheticLambda8;->f$0:Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->resize(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;

    move-result-object p0

    return-object p0
.end method
