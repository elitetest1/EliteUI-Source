.class abstract Landroid/speech/RecognitionPart$BaseBuilder;
.super Ljava/lang/Object;
.source "RecognitionPart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/RecognitionPart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "BaseBuilder"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist setFormattedText(Ljava/lang/String;)Landroid/speech/RecognitionPart$Builder;
    .locals 4

    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    check-cast p0, Landroid/speech/RecognitionPart$Builder;

    invoke-static {p0}, Landroid/speech/RecognitionPart$Builder;->-$$Nest$mcheckNotUsed(Landroid/speech/RecognitionPart$Builder;)V

    invoke-static {p0}, Landroid/speech/RecognitionPart$Builder;->-$$Nest$fgetmBuilderFieldsSet(Landroid/speech/RecognitionPart$Builder;)J

    move-result-wide v0

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    invoke-static {p0, v0, v1}, Landroid/speech/RecognitionPart$Builder;->-$$Nest$fputmBuilderFieldsSet(Landroid/speech/RecognitionPart$Builder;J)V

    invoke-static {p0, p1}, Landroid/speech/RecognitionPart$Builder;->-$$Nest$fputmFormattedText(Landroid/speech/RecognitionPart$Builder;Ljava/lang/String;)V

    return-object p0
.end method
