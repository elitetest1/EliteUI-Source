.class final Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect$Builder;
.super Ljava/lang/Object;
.source "SerializedRepeatingEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mPreamble:Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

.field private blacklist mRepeating:Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist build()Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect;
    .locals 2

    new-instance v0, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect;

    iget-object v1, p0, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect$Builder;->mPreamble:Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    iget-object p0, p0, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect$Builder;->mRepeating:Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    invoke-direct {v0, v1, p0}, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect;-><init>(Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;)V

    return-object v0
.end method

.method blacklist hasRepeatingSegment()Z
    .locals 0

    iget-object p0, p0, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect$Builder;->mRepeating:Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method blacklist setPreamble(Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect$Builder;->mPreamble:Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    return-void
.end method

.method blacklist setRepeating(Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect$Builder;->mRepeating:Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    return-void
.end method
