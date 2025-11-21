.class public Landroid/widget/RemoteViewsSerializers;
.super Ljava/lang/Object;
.source "RemoteViewsSerializers.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "RemoteViews"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createAbsoluteSizeSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/AbsoluteSizeSpan;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unhandled field while reading AbsoluteSizeSpan proto!\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AbsoluteSizeSpan"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-wide v1, 0x10800000002L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result v1

    goto :goto_0

    :cond_1
    const-wide v2, 0x10500000001L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    goto :goto_0

    :cond_2
    new-instance p0, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {p0, v0, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    return-object p0
.end method

.method public static blacklist createAccessibilityClickableSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/AccessibilityClickableSpan;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unhandled field while reading AccessibilityClickableSpan proto!\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AccessibilityClickable"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-wide v0, 0x10500000001L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    goto :goto_0

    :cond_1
    new-instance p0, Landroid/text/style/AccessibilityClickableSpan;

    invoke-direct {p0, v0}, Landroid/text/style/AccessibilityClickableSpan;-><init>(I)V

    return-object p0
.end method

.method public static blacklist createAccessibilityReplacementSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/AccessibilityReplacementSpan;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unhandled field while reading AccessibilityReplacementSpan proto!\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AccessibilityReplacemen"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-wide v0, 0x10b00000001L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v0

    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createCharSequenceFromProto(Landroid/util/proto/ProtoInputStream;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    move-object v0, v2

    goto :goto_0

    :cond_1
    new-instance p0, Landroid/text/style/AccessibilityReplacementSpan;

    invoke-direct {p0, v0}, Landroid/text/style/AccessibilityReplacementSpan;-><init>(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public static blacklist createAccessibilityURLSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/AccessibilityURLSpan;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unhandled field while reading AccessibilityURLSpan proto!\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AccessibilityURLSpan"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-wide v0, 0x10900000001L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance p0, Landroid/text/style/AccessibilityURLSpan;

    new-instance v1, Landroid/text/style/URLSpan;

    invoke-direct {v1, v0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Landroid/text/style/AccessibilityURLSpan;-><init>(Landroid/text/style/URLSpan;)V

    return-object p0
.end method

.method public static blacklist createAlignmentSpanStandardFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/AlignmentSpan$Standard;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unhandled field while reading AlignmentSpan proto!\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AlignmentSpan"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-wide v0, 0x10900000001L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance p0, Landroid/text/style/AlignmentSpan$Standard;

    invoke-static {v0}, Landroid/text/Layout$Alignment;->valueOf(Ljava/lang/String;)Landroid/text/Layout$Alignment;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    return-object p0
.end method

.method public static blacklist createAnnotationFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/Annotation;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unhandled field while reading Annotation proto!\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Annotation"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-wide v1, 0x10900000002L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-wide v2, 0x10900000001L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance p0, Landroid/text/Annotation;

    invoke-direct {p0, v0, v1}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static blacklist createBackgroundColorSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/BackgroundColorSpan;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unhandled field while reading BackgroundColorSpan proto!\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BackgroundColorSpan"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-wide v0, 0x10500000001L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    goto :goto_0

    :cond_1
    new-instance p0, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {p0, v0}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    return-object p0
.end method

.method public static blacklist createBulletSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/BulletSpan;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unhandled field while reading BulletSpan proto!\n"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BulletSpan"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-wide v4, 0x10800000004L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result v2

    goto :goto_0

    :cond_1
    const-wide v3, 0x10500000003L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v3

    goto :goto_0

    :cond_2
    const-wide v4, 0x10500000002L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    goto :goto_0

    :cond_3
    const-wide v4, 0x10500000001L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    goto :goto_0

    :cond_4
    new-instance p0, Landroid/text/style/BulletSpan;

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/text/style/BulletSpan;-><init>(IIZI)V

    return-object p0
.end method

.method public static blacklist createCharSequenceFromProto(Landroid/util/proto/ProtoInputStream;)Ljava/lang/CharSequence;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unhandled field while reading CharSequence proto!\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RemoteViews"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-wide v1, 0x20b00000002L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    invoke-static {p0, v0}, Landroid/widget/RemoteViewsSerializers;->createSpanFromProto(Landroid/util/proto/ProtoInputStream;Landroid/text/SpannableStringBuilder;)V

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    move v1, v3

    goto :goto_0

    :cond_1
    const-wide v2, 0x10900000001L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    return-object v0

    :cond_3
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist createEasyEditSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/EasyEditSpan;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance p0, Landroid/text/style/EasyEditSpan;

    invoke-direct {p0}, Landroid/text/style/EasyEditSpan;-><init>()V

    return-object p0
.end method

.method public static blacklist createForegroundColorSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/ForegroundColorSpan;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unhandled field while reading ForegroundColorSpan proto!\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ForegroundColorSpan"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-wide v0, 0x10500000001L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    goto :goto_0

    :cond_1
    new-instance p0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p0, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    return-object p0
.end method

.method public static blacklist createIconFromProto(Landroid/util/proto/ProtoInputStream;)Ljava/util/function/Function;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoInputStream;",
            ")",
            "Ljava/util/function/Function<",
            "Landroid/content/res/Resources;",
            "Landroid/graphics/drawable/Icon;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unhandled field while reading Icon proto!\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RemoteViews"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    const-wide v3, 0x10c00000008L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readBytes(J)[B

    move-result-object v1

    array-length v5, v1

    invoke-static {v1, v2, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v3, v4, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    const-wide v1, 0x10900000007L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    const-wide v1, 0x10900000006L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    :pswitch_3
    const-wide v1, 0x10c00000005L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readBytes(J)[B

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    :pswitch_4
    const-wide v1, 0x10900000004L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    :pswitch_5
    const-wide v3, 0x10c00000003L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readBytes(J)[B

    move-result-object v1

    array-length v5, v1

    invoke-static {v1, v2, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v3, v4, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    :pswitch_6
    const-wide v1, 0x10b00000002L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    invoke-static {p0}, Landroid/content/res/ColorStateList;->createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v0, v1, v2, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto/16 :goto_0

    :pswitch_7
    const-wide v1, 0x10500000001L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto/16 :goto_0

    :cond_0
    new-instance p0, Landroid/widget/RemoteViewsSerializers$$ExternalSyntheticLambda0;

    invoke-direct {p0, v0}, Landroid/widget/RemoteViewsSerializers$$ExternalSyntheticLambda0;-><init>(Landroid/util/LongSparseArray;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist createLeadingMarginSpanStandardFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/LeadingMarginSpan$Standard;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unhandled field while reading LeadingMarginSpanproto!\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LeadingMarginSpan"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-wide v1, 0x10500000002L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    goto :goto_0

    :cond_1
    const-wide v2, 0x10500000001L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    goto :goto_0

    :cond_2
    new-instance p0, Landroid/text/style/LeadingMarginSpan$Standard;

    invoke-direct {p0, v0, v1}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(II)V

    return-object p0
.end method

.method public static blacklist createLineBackgroundSpanStandardFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/LineBackgroundSpan$Standard;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unhandled field while reading LineBackgroundSpan proto!\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LineBackgroundSpan"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-wide v0, 0x10500000001L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    goto :goto_0

    :cond_1
    new-instance p0, Landroid/text/style/LineBackgroundSpan$Standard;

    invoke-direct {p0, v0}, Landroid/text/style/LineBackgroundSpan$Standard;-><init>(I)V

    return-object p0
.end method

.method public static blacklist createLineBreakConfigSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/LineBreakConfigSpan;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unhandled field while reading LineBreakConfigSpan proto!\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LineBreakConfigSpan"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-wide v2, 0x10500000003L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    goto :goto_0

    :cond_1
    const-wide v3, 0x10500000002L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    goto :goto_0

    :cond_2
    const-wide v3, 0x10500000001L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    goto :goto_0

    :cond_3
    new-instance p0, Landroid/graphics/text/LineBreakConfig$Builder;

    invoke-direct {p0}, Landroid/graphics/text/LineBreakConfig$Builder;-><init>()V

    invoke-virtual {p0, v0}, Landroid/graphics/text/LineBreakConfig$Builder;->setLineBreakStyle(I)Landroid/graphics/text/LineBreakConfig$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/graphics/text/LineBreakConfig$Builder;->setLineBreakWordStyle(I)Landroid/graphics/text/LineBreakConfig$Builder;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/graphics/text/LineBreakConfig$Builder;->setHyphenation(I)Landroid/graphics/text/LineBreakConfig$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/text/LineBreakConfig$Builder;->build()Landroid/graphics/text/LineBreakConfig;

    move-result-object p0

    new-instance v0, Landroid/text/style/LineBreakConfigSpan;

    invoke-direct {v0, p0}, Landroid/text/style/LineBreakConfigSpan;-><init>(Landroid/graphics/text/LineBreakConfig;)V

    return-object v0
.end method

.method public static blacklist createLineHeightSpanStandardFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/LineHeightSpan$Standard;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unhandled field while reading LineHeightSpan.Standard proto!\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LineHeightSpan.Standard"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-wide v0, 0x10500000001L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    goto :goto_0

    :cond_1
    new-instance p0, Landroid/text/style/LineHeightSpan$Standard;

    invoke-direct {p0, v0}, Landroid/text/style/LineHeightSpan$Standard;-><init>(I)V

    return-object p0
.end method

.method public static blacklist createLocaleSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/LocaleSpan;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unhandled field while reading LocaleSpan proto!\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LocaleSpan"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-wide v0, 0x10900000001L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance p0, Landroid/text/style/LocaleSpan;

    invoke-static {v0}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/text/style/LocaleSpan;-><init>(Landroid/os/LocaleList;)V

    return-object p0
.end method

.method public static blacklist createQuoteSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/QuoteSpan;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unhandled field while reading QuoteSpan proto!\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "QuoteSpan"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-wide v2, 0x10500000003L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    goto :goto_0

    :cond_1
    const-wide v3, 0x10500000002L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    goto :goto_0

    :cond_2
    const-wide v3, 0x10500000001L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    goto :goto_0

    :cond_3
    new-instance p0, Landroid/text/style/QuoteSpan;

    invoke-direct {p0, v0, v1, v2}, Landroid/text/style/QuoteSpan;-><init>(III)V

    return-object p0
.end method

.method public static blacklist createRelativeSizeSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/RelativeSizeSpan;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unhandled field while reading RelativeSizeSpan proto!\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RelativeSizeSpan"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-wide v0, 0x10200000001L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readFloat(J)F

    move-result v0

    goto :goto_0

    :cond_1
    new-instance p0, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {p0, v0}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    return-object p0
.end method

.method public static blacklist createScaleXSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/ScaleXSpan;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unhandled field while reading ScaleXSpan proto!\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScaleXSpan"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-wide v0, 0x10200000001L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readFloat(J)F

    move-result v0

    goto :goto_0

    :cond_1
    new-instance p0, Landroid/text/style/ScaleXSpan;

    invoke-direct {p0, v0}, Landroid/text/style/ScaleXSpan;-><init>(F)V

    return-object p0
.end method

.method private static blacklist createSpanFromProto(Landroid/util/proto/ProtoInputStream;Landroid/text/SpannableStringBuilder;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    move-object v3, v1

    move v1, v2

    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unhandled field while reading CharSequence proto!\n"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RemoteViews"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    const-wide v3, 0x20b00000021L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createURLSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/URLSpan;

    move-result-object v5

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto/16 :goto_1

    :pswitch_1
    const-wide v3, 0x20b00000020L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createUnderlineSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/UnderlineSpan;

    move-result-object v5

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto/16 :goto_1

    :pswitch_2
    const-wide v3, 0x20b0000001fL

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createTypefaceSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/TypefaceSpan;

    move-result-object v5

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto/16 :goto_1

    :pswitch_3
    const-wide v3, 0x20b0000001eL

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createTtsSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/TtsSpan;

    move-result-object v5

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto/16 :goto_1

    :pswitch_4
    const-wide v3, 0x20b0000001dL

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createTextAppearanceSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/TextAppearanceSpan;

    move-result-object v5

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto/16 :goto_1

    :pswitch_5
    const-wide v3, 0x20b0000001cL

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createSuperscriptSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/SuperscriptSpan;

    move-result-object v5

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto/16 :goto_1

    :pswitch_6
    const-wide v3, 0x20b0000001bL

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createSuggestionRangeSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/SuggestionRangeSpan;

    move-result-object v5

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto/16 :goto_1

    :pswitch_7
    const-wide v3, 0x20b0000001aL

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createSuggestionSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/SuggestionSpan;

    move-result-object v5

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto/16 :goto_1

    :pswitch_8
    const-wide v3, 0x20b00000019L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createSubscriptSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/SubscriptSpan;

    move-result-object v5

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto/16 :goto_1

    :pswitch_9
    const-wide v3, 0x20b00000018L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createStyleSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/StyleSpan;

    move-result-object v5

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto/16 :goto_1

    :pswitch_a
    const-wide v3, 0x20b00000017L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createStrikethroughSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/StrikethroughSpan;

    move-result-object v5

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto/16 :goto_1

    :pswitch_b
    const-wide v3, 0x20b00000016L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createSpellCheckSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/SpellCheckSpan;

    move-result-object v5

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto/16 :goto_1

    :pswitch_c
    const-wide v3, 0x20b00000015L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createScaleXSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/ScaleXSpan;

    move-result-object v5

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto/16 :goto_1

    :pswitch_d
    const-wide v3, 0x20b00000014L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createRelativeSizeSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/RelativeSizeSpan;

    move-result-object v5

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto/16 :goto_1

    :pswitch_e
    const-wide v3, 0x20b00000013L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createQuoteSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/QuoteSpan;

    move-result-object v5

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto/16 :goto_1

    :pswitch_f
    const-wide v3, 0x20b00000012L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createLocaleSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/LocaleSpan;

    move-result-object v5

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto/16 :goto_1

    :pswitch_10
    const-wide v3, 0x20b00000011L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createLineHeightSpanStandardFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/LineHeightSpan$Standard;

    move-result-object v5

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto/16 :goto_1

    :pswitch_11
    invoke-static {}, Lcom/android/text/flags/Flags;->noBreakNoHyphenationSpan()Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_0

    :cond_0
    const-wide v3, 0x20b00000010L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createLineBreakConfigSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/LineBreakConfigSpan;

    move-result-object v5

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto/16 :goto_1

    :pswitch_12
    const-wide v3, 0x20b0000000fL

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createLineBackgroundSpanStandardFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/LineBackgroundSpan$Standard;

    move-result-object v5

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto/16 :goto_1

    :pswitch_13
    const-wide v3, 0x20b0000000eL

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createLeadingMarginSpanStandardFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/LeadingMarginSpan$Standard;

    move-result-object v5

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto/16 :goto_1

    :pswitch_14
    const-wide v3, 0x20b0000000dL

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createForegroundColorSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v5

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto/16 :goto_1

    :pswitch_15
    const-wide v3, 0x20b0000000cL

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createEasyEditSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/EasyEditSpan;

    move-result-object v5

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto/16 :goto_1

    :pswitch_16
    const-wide v3, 0x20b0000000bL

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createBulletSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/BulletSpan;

    move-result-object v5

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto/16 :goto_1

    :pswitch_17
    const-wide v3, 0x20b0000000aL

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createBackgroundColorSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/BackgroundColorSpan;

    move-result-object v5

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto :goto_1

    :pswitch_18
    const-wide v3, 0x20b00000009L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createAnnotationFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/Annotation;

    move-result-object v5

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto :goto_1

    :pswitch_19
    const-wide v3, 0x20b00000008L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createAlignmentSpanStandardFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/AlignmentSpan$Standard;

    move-result-object v5

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto :goto_1

    :pswitch_1a
    const-wide v3, 0x20b00000007L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createAccessibilityURLSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/AccessibilityURLSpan;

    move-result-object v5

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto :goto_1

    :pswitch_1b
    const-wide v3, 0x20b00000006L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createAccessibilityReplacementSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/AccessibilityReplacementSpan;

    move-result-object v5

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto :goto_1

    :pswitch_1c
    const-wide v3, 0x20b00000005L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createAccessibilityClickableSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/AccessibilityClickableSpan;

    move-result-object v5

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto :goto_1

    :pswitch_1d
    const-wide v3, 0x20b00000004L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createAbsoluteSizeSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/AbsoluteSizeSpan;

    move-result-object v5

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    :goto_1
    move-object v3, v5

    goto/16 :goto_0

    :pswitch_1e
    const-wide v4, 0x10500000003L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    goto/16 :goto_0

    :pswitch_1f
    const-wide v4, 0x10500000002L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    goto/16 :goto_0

    :pswitch_20
    const-wide v4, 0x10500000001L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    goto/16 :goto_0

    :cond_1
    if-nez v3, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist createSpellCheckSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/SpellCheckSpan;
    .locals 0

    new-instance p0, Landroid/text/style/SpellCheckSpan;

    invoke-direct {p0}, Landroid/text/style/SpellCheckSpan;-><init>()V

    return-object p0
.end method

.method public static blacklist createStrikethroughSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/StrikethroughSpan;
    .locals 0

    new-instance p0, Landroid/text/style/StrikethroughSpan;

    invoke-direct {p0}, Landroid/text/style/StrikethroughSpan;-><init>()V

    return-object p0
.end method

.method public static blacklist createStyleSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/StyleSpan;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unhandled field while reading StyleSpan proto!\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StyleSpan"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-wide v1, 0x10500000002L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    goto :goto_0

    :cond_1
    const-wide v2, 0x10500000001L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    goto :goto_0

    :cond_2
    new-instance p0, Landroid/text/style/StyleSpan;

    invoke-direct {p0, v0, v1}, Landroid/text/style/StyleSpan;-><init>(II)V

    return-object p0
.end method

.method public static blacklist createSubscriptSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/SubscriptSpan;
    .locals 0

    new-instance p0, Landroid/text/style/SubscriptSpan;

    invoke-direct {p0}, Landroid/text/style/SubscriptSpan;-><init>()V

    return-object p0
.end method

.method public static blacklist createSuggestionRangeSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/SuggestionRangeSpan;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unhandled field while reading SuggestionRangeSpan proto!\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SuggestionRangeSpan"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-wide v0, 0x10500000001L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    goto :goto_0

    :cond_1
    new-instance p0, Landroid/text/style/SuggestionRangeSpan;

    invoke-direct {p0}, Landroid/text/style/SuggestionRangeSpan;-><init>()V

    invoke-virtual {p0, v0}, Landroid/text/style/SuggestionRangeSpan;->setBackgroundColor(I)V

    return-object p0
.end method

.method public static blacklist createSuggestionSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/SuggestionSpan;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v7, v2

    move v10, v7

    move v11, v10

    move v13, v11

    move v15, v13

    move/from16 v17, v15

    move-object v8, v3

    move-object v9, v8

    move v12, v4

    move v14, v12

    move/from16 v16, v14

    move/from16 v18, v16

    :goto_0
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unhandled field while reading SuggestionSpan proto!\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SuggestionSpan"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    const-wide v2, 0x1020000000dL

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readFloat(J)F

    move-result v18

    goto :goto_0

    :pswitch_1
    const-wide v2, 0x1050000000cL

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v17

    goto :goto_0

    :pswitch_2
    const-wide v2, 0x1020000000bL

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readFloat(J)F

    move-result v16

    goto :goto_0

    :pswitch_3
    const-wide v2, 0x1050000000aL

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v15

    goto :goto_0

    :pswitch_4
    const-wide v2, 0x10200000009L

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readFloat(J)F

    move-result v14

    goto :goto_0

    :pswitch_5
    const-wide v2, 0x10500000008L

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v13

    goto :goto_0

    :pswitch_6
    const-wide v2, 0x10200000007L

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readFloat(J)F

    move-result v12

    goto :goto_0

    :pswitch_7
    const-wide v2, 0x10500000006L

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v11

    goto :goto_0

    :pswitch_8
    const-wide v2, 0x10500000005L

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v10

    goto :goto_0

    :pswitch_9
    const-wide v2, 0x10900000004L

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    :pswitch_a
    const-wide v2, 0x10900000003L

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    :pswitch_b
    const-wide v2, 0x10500000002L

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v7

    goto/16 :goto_0

    :pswitch_c
    const-wide v2, 0x20900000001L

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v6, v0, [Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v5, Landroid/text/style/SuggestionSpan;

    invoke-direct/range {v5 .. v18}, Landroid/text/style/SuggestionSpan;-><init>([Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIFIFIFIF)V

    return-object v5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist createSuperscriptSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/SuperscriptSpan;
    .locals 0

    new-instance p0, Landroid/text/style/SuperscriptSpan;

    invoke-direct {p0}, Landroid/text/style/SuperscriptSpan;-><init>()V

    return-object p0
.end method

.method public static blacklist createTextAppearanceSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/TextAppearanceSpan;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, v1

    move-object v8, v5

    move-object v9, v8

    move-object v12, v9

    move-object/from16 v21, v12

    move-object/from16 v22, v21

    move v6, v2

    move v7, v6

    move v11, v7

    move/from16 v16, v11

    move/from16 v17, v16

    move/from16 v18, v17

    move/from16 v19, v18

    move v13, v3

    move v14, v13

    move v15, v14

    move/from16 v20, v15

    :goto_0
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unhandled field while reading TextAppearanceSpan proto!\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TextAppearanceSpan"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    const-wide v1, 0x10900000012L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v22

    goto :goto_0

    :pswitch_2
    const-wide v1, 0x10900000011L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v21

    goto :goto_0

    :pswitch_3
    const-wide v1, 0x10200000010L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readFloat(J)F

    move-result v20

    goto :goto_0

    :pswitch_4
    const-wide v1, 0x1080000000fL

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result v19

    goto :goto_0

    :pswitch_5
    const-wide v1, 0x1080000000eL

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result v18

    goto :goto_0

    :pswitch_6
    const-wide v1, 0x1080000000dL

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result v17

    goto :goto_0

    :pswitch_7
    const-wide v1, 0x1050000000cL

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v16

    goto :goto_0

    :pswitch_8
    const-wide v1, 0x1020000000bL

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readFloat(J)F

    move-result v15

    goto :goto_0

    :pswitch_9
    const-wide v1, 0x1020000000aL

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readFloat(J)F

    move-result v14

    goto :goto_0

    :pswitch_a
    const-wide v1, 0x10200000009L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readFloat(J)F

    move-result v13

    goto/16 :goto_0

    :pswitch_b
    const-wide v1, 0x10900000008L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v12

    goto/16 :goto_0

    :pswitch_c
    const-wide v1, 0x10500000007L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v11

    goto/16 :goto_0

    :pswitch_d
    const-wide v1, 0x10b00000005L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    invoke-static {v0}, Landroid/content/res/ColorStateList;->createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto/16 :goto_0

    :pswitch_e
    const-wide v1, 0x10b00000004L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    invoke-static {v0}, Landroid/content/res/ColorStateList;->createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto/16 :goto_0

    :pswitch_f
    const-wide v1, 0x10500000003L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v7

    goto/16 :goto_0

    :pswitch_10
    const-wide v1, 0x10500000002L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v6

    goto/16 :goto_0

    :pswitch_11
    const-wide v1, 0x10900000001L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :cond_0
    new-instance v4, Landroid/text/style/TextAppearanceSpan;

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v22}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/graphics/Typeface;ILandroid/os/LocaleList;FFFIZZZFLjava/lang/String;Ljava/lang/String;)V

    return-object v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static blacklist createTtsSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/TtsSpan;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unhandled field while reading TtsSpan proto!\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TtsSpan"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-wide v1, 0x10900000002L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v2}, Landroid/os/PersistableBundle;->readFromStream(Ljava/io/InputStream;)Landroid/os/PersistableBundle;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-wide v2, 0x10900000001L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance p0, Landroid/text/style/TtsSpan;

    invoke-direct {p0, v0, v1}, Landroid/text/style/TtsSpan;-><init>(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    return-object p0
.end method

.method public static blacklist createTypefaceSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/TypefaceSpan;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unhandled field while reading TypefaceSpan proto!\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TypefaceSpan"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-wide v0, 0x10900000001L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance p0, Landroid/text/style/TypefaceSpan;

    invoke-direct {p0, v0}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public static blacklist createURLSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/URLSpan;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unhandled field while reading URLSpan proto!\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "URLSpan"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-wide v0, 0x10900000001L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance p0, Landroid/text/style/URLSpan;

    invoke-direct {p0, v0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public static blacklist createUnderlineSpanFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/text/style/UnderlineSpan;
    .locals 0

    new-instance p0, Landroid/text/style/UnderlineSpan;

    invoke-direct {p0}, Landroid/text/style/UnderlineSpan;-><init>()V

    return-object p0
.end method

.method static synthetic blacklist lambda$createIconFromProto$0(Landroid/util/LongSparseArray;Landroid/content/res/Resources;)Landroid/graphics/drawable/Icon;
    .locals 11

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-wide v2, 0x10500000001L

    invoke-virtual {p0, v2, v3, v1}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-wide v2, 0x10b00000002L

    invoke-virtual {p0, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/ColorStateList;

    const-wide v3, 0x10c00000003L

    invoke-virtual {p0, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    const-wide v4, 0x10c00000008L

    invoke-virtual {p0, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    const-wide v5, 0x10900000004L

    invoke-virtual {p0, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    invoke-virtual {p1, v5, v6, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    :cond_0
    move v5, v0

    :goto_0
    const-wide v7, 0x10c00000005L

    invoke-virtual {p0, v7, v8}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    const-wide v8, 0x10900000006L

    invoke-virtual {p0, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-wide v9, 0x10900000007L

    invoke-virtual {p0, v9, v10}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-static {v3}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object p0

    goto :goto_1

    :cond_1
    if-eqz v4, :cond_2

    invoke-static {v4}, Landroid/graphics/drawable/Icon;->createWithAdaptiveBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object p0

    goto :goto_1

    :cond_2
    if-eq v5, v0, :cond_3

    invoke-static {p1, v5}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Icon;

    move-result-object p0

    goto :goto_1

    :cond_3
    if-eqz v7, :cond_4

    const/4 p0, 0x0

    array-length p1, v7

    invoke-static {v7, p0, p1}, Landroid/graphics/drawable/Icon;->createWithData([BII)Landroid/graphics/drawable/Icon;

    move-result-object p0

    goto :goto_1

    :cond_4
    if-eqz v8, :cond_5

    invoke-static {v8}, Landroid/graphics/drawable/Icon;->createWithContentUri(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object p0

    goto :goto_1

    :cond_5
    if-eqz p0, :cond_8

    invoke-static {p0}, Landroid/graphics/drawable/Icon;->createWithAdaptiveBitmapContentUri(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object p0

    :goto_1
    if-eqz v2, :cond_6

    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Icon;->setTintList(Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Icon;

    :cond_6
    if-eq v1, v0, :cond_7

    invoke-static {v1}, Landroid/graphics/BlendMode;->fromValue(I)Landroid/graphics/BlendMode;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Icon;->setTintBlendMode(Landroid/graphics/BlendMode;)Landroid/graphics/drawable/Icon;

    :cond_7
    return-object p0

    :cond_8
    return-object v6
.end method

.method public static blacklist writeAbsoluteSizeSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/AbsoluteSizeSpan;)V
    .locals 3

    const-wide v0, 0x10500000001L

    invoke-virtual {p1}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10800000002L

    invoke-virtual {p1}, Landroid/text/style/AbsoluteSizeSpan;->getDip()Z

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    return-void
.end method

.method public static blacklist writeAccessibilityClickableSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/AccessibilityClickableSpan;)V
    .locals 2

    const-wide v0, 0x10500000001L

    invoke-virtual {p1}, Landroid/text/style/AccessibilityClickableSpan;->getOriginalClickableSpanId()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    return-void
.end method

.method public static blacklist writeAccessibilityReplacementSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/AccessibilityReplacementSpan;)V
    .locals 2

    const-wide v0, 0x10b00000001L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/text/style/AccessibilityReplacementSpan;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p0, p1}, Landroid/widget/RemoteViewsSerializers;->writeCharSequenceToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public static blacklist writeAccessibilityURLSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/AccessibilityURLSpan;)V
    .locals 2

    const-wide v0, 0x10900000001L

    invoke-virtual {p1}, Landroid/text/style/AccessibilityURLSpan;->getURL()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    return-void
.end method

.method public static blacklist writeAlignmentSpanStandardToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/AlignmentSpan$Standard;)V
    .locals 2

    invoke-virtual {p1}, Landroid/text/style/AlignmentSpan$Standard;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/Layout$Alignment;->name()Ljava/lang/String;

    move-result-object p1

    const-wide v0, 0x10900000001L

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    return-void
.end method

.method public static blacklist writeAnnotationToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/Annotation;)V
    .locals 3

    const-wide v0, 0x10900000001L

    invoke-virtual {p1}, Landroid/text/Annotation;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v0, 0x10900000002L

    invoke-virtual {p1}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    return-void
.end method

.method public static blacklist writeBackgroundColorSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/BackgroundColorSpan;)V
    .locals 2

    const-wide v0, 0x10500000001L

    invoke-virtual {p1}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    return-void
.end method

.method public static blacklist writeBulletSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/BulletSpan;)V
    .locals 3

    const-wide v0, 0x10500000003L

    invoke-virtual {p1}, Landroid/text/style/BulletSpan;->getBulletRadius()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000002L

    invoke-virtual {p1}, Landroid/text/style/BulletSpan;->getColor()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000001L

    invoke-virtual {p1}, Landroid/text/style/BulletSpan;->getGapWidth()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10800000004L

    invoke-virtual {p1}, Landroid/text/style/BulletSpan;->getWantColor()Z

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    return-void
.end method

.method public static blacklist writeCharSequenceToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/CharSequence;)V
    .locals 10

    const-wide v0, 0x10900000001L

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_1f

    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {v0, v2, p1, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    array-length v1, p1

    :goto_0
    if-ge v2, v1, :cond_1f

    aget-object v3, p1, v2

    instance-of v4, v3, Landroid/text/style/CharacterStyle;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Landroid/text/style/CharacterStyle;

    invoke-virtual {v4}, Landroid/text/style/CharacterStyle;->getUnderlying()Landroid/text/style/CharacterStyle;

    move-result-object v4

    goto :goto_1

    :cond_0
    move-object v4, v3

    :goto_1
    const-wide v5, 0x20b00000002L

    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    const-wide v7, 0x10500000001L

    invoke-interface {v0, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {p0, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v7, 0x10500000002L

    invoke-interface {v0, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {p0, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v7, 0x10500000003L

    invoke-interface {v0, v3}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0, v7, v8, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    instance-of v3, v4, Landroid/text/style/AbsoluteSizeSpan;

    if-eqz v3, :cond_1

    check-cast v4, Landroid/text/style/AbsoluteSizeSpan;

    const-wide v7, 0x20b00000004L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    invoke-static {p0, v4}, Landroid/widget/RemoteViewsSerializers;->writeAbsoluteSizeSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/AbsoluteSizeSpan;)V

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto/16 :goto_2

    :cond_1
    instance-of v3, v4, Landroid/text/style/AccessibilityClickableSpan;

    if-eqz v3, :cond_2

    check-cast v4, Landroid/text/style/AccessibilityClickableSpan;

    const-wide v7, 0x20b00000005L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    invoke-static {p0, v4}, Landroid/widget/RemoteViewsSerializers;->writeAccessibilityClickableSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/AccessibilityClickableSpan;)V

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto/16 :goto_2

    :cond_2
    instance-of v3, v4, Landroid/text/style/AccessibilityReplacementSpan;

    if-eqz v3, :cond_3

    check-cast v4, Landroid/text/style/AccessibilityReplacementSpan;

    const-wide v7, 0x20b00000006L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    invoke-static {p0, v4}, Landroid/widget/RemoteViewsSerializers;->writeAccessibilityReplacementSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/AccessibilityReplacementSpan;)V

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto/16 :goto_2

    :cond_3
    instance-of v3, v4, Landroid/text/style/AccessibilityURLSpan;

    if-eqz v3, :cond_4

    check-cast v4, Landroid/text/style/AccessibilityURLSpan;

    const-wide v7, 0x20b00000007L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    invoke-static {p0, v4}, Landroid/widget/RemoteViewsSerializers;->writeAccessibilityURLSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/AccessibilityURLSpan;)V

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto/16 :goto_2

    :cond_4
    instance-of v3, v4, Landroid/text/Annotation;

    if-eqz v3, :cond_5

    check-cast v4, Landroid/text/Annotation;

    const-wide v7, 0x20b00000009L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    invoke-static {p0, v4}, Landroid/widget/RemoteViewsSerializers;->writeAnnotationToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/Annotation;)V

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto/16 :goto_2

    :cond_5
    instance-of v3, v4, Landroid/text/style/BackgroundColorSpan;

    if-eqz v3, :cond_6

    check-cast v4, Landroid/text/style/BackgroundColorSpan;

    const-wide v7, 0x20b0000000aL

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    invoke-static {p0, v4}, Landroid/widget/RemoteViewsSerializers;->writeBackgroundColorSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/BackgroundColorSpan;)V

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto/16 :goto_2

    :cond_6
    instance-of v3, v4, Landroid/text/style/BulletSpan;

    if-eqz v3, :cond_7

    check-cast v4, Landroid/text/style/BulletSpan;

    const-wide v7, 0x20b0000000bL

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    invoke-static {p0, v4}, Landroid/widget/RemoteViewsSerializers;->writeBulletSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/BulletSpan;)V

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto/16 :goto_2

    :cond_7
    instance-of v3, v4, Landroid/text/style/EasyEditSpan;

    if-eqz v3, :cond_8

    check-cast v4, Landroid/text/style/EasyEditSpan;

    const-wide v7, 0x20b0000000cL

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    invoke-static {p0, v4}, Landroid/widget/RemoteViewsSerializers;->writeEasyEditSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/EasyEditSpan;)V

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto/16 :goto_2

    :cond_8
    instance-of v3, v4, Landroid/text/style/ForegroundColorSpan;

    if-eqz v3, :cond_9

    check-cast v4, Landroid/text/style/ForegroundColorSpan;

    const-wide v7, 0x20b0000000dL

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    invoke-static {p0, v4}, Landroid/widget/RemoteViewsSerializers;->writeForegroundColorSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/ForegroundColorSpan;)V

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto/16 :goto_2

    :cond_9
    invoke-static {}, Lcom/android/text/flags/Flags;->noBreakNoHyphenationSpan()Z

    move-result v3

    if-eqz v3, :cond_a

    instance-of v3, v4, Landroid/text/style/LineBreakConfigSpan;

    if-eqz v3, :cond_a

    check-cast v4, Landroid/text/style/LineBreakConfigSpan;

    const-wide v7, 0x20b00000010L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    invoke-static {p0, v4}, Landroid/widget/RemoteViewsSerializers;->writeLineBreakConfigSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/LineBreakConfigSpan;)V

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto/16 :goto_2

    :cond_a
    instance-of v3, v4, Landroid/text/style/LocaleSpan;

    if-eqz v3, :cond_b

    check-cast v4, Landroid/text/style/LocaleSpan;

    const-wide v7, 0x20b00000012L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    invoke-static {p0, v4}, Landroid/widget/RemoteViewsSerializers;->writeLocaleSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/LocaleSpan;)V

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto/16 :goto_2

    :cond_b
    instance-of v3, v4, Landroid/text/style/QuoteSpan;

    if-eqz v3, :cond_c

    check-cast v4, Landroid/text/style/QuoteSpan;

    const-wide v7, 0x20b00000013L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    invoke-static {p0, v4}, Landroid/widget/RemoteViewsSerializers;->writeQuoteSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/QuoteSpan;)V

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto/16 :goto_2

    :cond_c
    instance-of v3, v4, Landroid/text/style/RelativeSizeSpan;

    if-eqz v3, :cond_d

    check-cast v4, Landroid/text/style/RelativeSizeSpan;

    const-wide v7, 0x20b00000014L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    invoke-static {p0, v4}, Landroid/widget/RemoteViewsSerializers;->writeRelativeSizeSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/RelativeSizeSpan;)V

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto/16 :goto_2

    :cond_d
    instance-of v3, v4, Landroid/text/style/ScaleXSpan;

    if-eqz v3, :cond_e

    check-cast v4, Landroid/text/style/ScaleXSpan;

    const-wide v7, 0x20b00000015L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    invoke-static {p0, v4}, Landroid/widget/RemoteViewsSerializers;->writeScaleXSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/ScaleXSpan;)V

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto/16 :goto_2

    :cond_e
    instance-of v3, v4, Landroid/text/style/SpellCheckSpan;

    if-eqz v3, :cond_f

    check-cast v4, Landroid/text/style/SpellCheckSpan;

    const-wide v7, 0x20b00000016L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    invoke-static {p0, v4}, Landroid/widget/RemoteViewsSerializers;->writeSpellCheckSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/SpellCheckSpan;)V

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto/16 :goto_2

    :cond_f
    instance-of v3, v4, Landroid/text/style/LineBackgroundSpan$Standard;

    if-eqz v3, :cond_10

    check-cast v4, Landroid/text/style/LineBackgroundSpan$Standard;

    const-wide v7, 0x20b0000000fL

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    invoke-static {p0, v4}, Landroid/widget/RemoteViewsSerializers;->writeLineBackgroundSpanStandardToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/LineBackgroundSpan$Standard;)V

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto/16 :goto_2

    :cond_10
    instance-of v3, v4, Landroid/text/style/LineHeightSpan$Standard;

    if-eqz v3, :cond_11

    check-cast v4, Landroid/text/style/LineHeightSpan$Standard;

    const-wide v7, 0x20b00000011L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    invoke-static {p0, v4}, Landroid/widget/RemoteViewsSerializers;->writeLineHeightSpanStandardToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/LineHeightSpan$Standard;)V

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto/16 :goto_2

    :cond_11
    instance-of v3, v4, Landroid/text/style/LeadingMarginSpan$Standard;

    if-eqz v3, :cond_12

    check-cast v4, Landroid/text/style/LeadingMarginSpan$Standard;

    const-wide v7, 0x20b0000000eL

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    invoke-static {p0, v4}, Landroid/widget/RemoteViewsSerializers;->writeLeadingMarginSpanStandardToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/LeadingMarginSpan$Standard;)V

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto/16 :goto_2

    :cond_12
    instance-of v3, v4, Landroid/text/style/AlignmentSpan$Standard;

    if-eqz v3, :cond_13

    check-cast v4, Landroid/text/style/AlignmentSpan$Standard;

    const-wide v7, 0x20b00000008L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    invoke-static {p0, v4}, Landroid/widget/RemoteViewsSerializers;->writeAlignmentSpanStandardToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/AlignmentSpan$Standard;)V

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto/16 :goto_2

    :cond_13
    instance-of v3, v4, Landroid/text/style/StrikethroughSpan;

    if-eqz v3, :cond_14

    check-cast v4, Landroid/text/style/StrikethroughSpan;

    const-wide v7, 0x20b00000017L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    invoke-static {p0, v4}, Landroid/widget/RemoteViewsSerializers;->writeStrikethroughSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/StrikethroughSpan;)V

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto/16 :goto_2

    :cond_14
    instance-of v3, v4, Landroid/text/style/StyleSpan;

    if-eqz v3, :cond_15

    check-cast v4, Landroid/text/style/StyleSpan;

    const-wide v7, 0x20b00000018L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    invoke-static {p0, v4}, Landroid/widget/RemoteViewsSerializers;->writeStyleSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/StyleSpan;)V

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto/16 :goto_2

    :cond_15
    instance-of v3, v4, Landroid/text/style/SubscriptSpan;

    if-eqz v3, :cond_16

    check-cast v4, Landroid/text/style/SubscriptSpan;

    const-wide v7, 0x20b00000019L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    invoke-static {p0, v4}, Landroid/widget/RemoteViewsSerializers;->writeSubscriptSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/SubscriptSpan;)V

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto/16 :goto_2

    :cond_16
    instance-of v3, v4, Landroid/text/style/SuggestionRangeSpan;

    if-eqz v3, :cond_17

    check-cast v4, Landroid/text/style/SuggestionRangeSpan;

    const-wide v7, 0x20b0000001bL

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    invoke-static {p0, v4}, Landroid/widget/RemoteViewsSerializers;->writeSuggestionRangeSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/SuggestionRangeSpan;)V

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto/16 :goto_2

    :cond_17
    instance-of v3, v4, Landroid/text/style/SuggestionSpan;

    if-eqz v3, :cond_18

    check-cast v4, Landroid/text/style/SuggestionSpan;

    const-wide v7, 0x20b0000001aL

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    invoke-static {p0, v4}, Landroid/widget/RemoteViewsSerializers;->writeSuggestionSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/SuggestionSpan;)V

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto/16 :goto_2

    :cond_18
    instance-of v3, v4, Landroid/text/style/SuperscriptSpan;

    if-eqz v3, :cond_19

    check-cast v4, Landroid/text/style/SuperscriptSpan;

    const-wide v7, 0x20b0000001cL

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    invoke-static {p0, v4}, Landroid/widget/RemoteViewsSerializers;->writeSuperscriptSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/SuperscriptSpan;)V

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_2

    :cond_19
    instance-of v3, v4, Landroid/text/style/TextAppearanceSpan;

    if-eqz v3, :cond_1a

    check-cast v4, Landroid/text/style/TextAppearanceSpan;

    const-wide v7, 0x20b0000001dL

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    invoke-static {p0, v4}, Landroid/widget/RemoteViewsSerializers;->writeTextAppearanceSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/TextAppearanceSpan;)V

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_2

    :cond_1a
    instance-of v3, v4, Landroid/text/style/TtsSpan;

    if-eqz v3, :cond_1b

    check-cast v4, Landroid/text/style/TtsSpan;

    const-wide v7, 0x20b0000001eL

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    invoke-static {p0, v4}, Landroid/widget/RemoteViewsSerializers;->writeTtsSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/TtsSpan;)V

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_2

    :cond_1b
    instance-of v3, v4, Landroid/text/style/TypefaceSpan;

    if-eqz v3, :cond_1c

    check-cast v4, Landroid/text/style/TypefaceSpan;

    const-wide v7, 0x20b0000001fL

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    invoke-static {p0, v4}, Landroid/widget/RemoteViewsSerializers;->writeTypefaceSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/TypefaceSpan;)V

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_2

    :cond_1c
    instance-of v3, v4, Landroid/text/style/URLSpan;

    if-eqz v3, :cond_1d

    check-cast v4, Landroid/text/style/URLSpan;

    const-wide v7, 0x20b00000021L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    invoke-static {p0, v4}, Landroid/widget/RemoteViewsSerializers;->writeURLSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/URLSpan;)V

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_2

    :cond_1d
    instance-of v3, v4, Landroid/text/style/UnderlineSpan;

    if-eqz v3, :cond_1e

    check-cast v4, Landroid/text/style/UnderlineSpan;

    const-wide v7, 0x20b00000020L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    invoke-static {p0, v4}, Landroid/widget/RemoteViewsSerializers;->writeUnderlineSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/UnderlineSpan;)V

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_1e
    :goto_2
    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_1f
    return-void
.end method

.method public static blacklist writeEasyEditSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/EasyEditSpan;)V
    .locals 0

    return-void
.end method

.method public static blacklist writeForegroundColorSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/ForegroundColorSpan;)V
    .locals 2

    const-wide v0, 0x10500000001L

    invoke-virtual {p1}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    return-void
.end method

.method public static blacklist writeIconToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/res/Resources;Landroid/graphics/drawable/Icon;)V
    .locals 3

    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide v0, 0x10b00000002L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getTintList()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/res/ColorStateList;->writeToProto(Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getTintBlendMode()Landroid/graphics/BlendMode;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BlendMode;->toValue(Landroid/graphics/BlendMode;)I

    move-result v0

    const-wide v1, 0x10500000001L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/16 v1, 0x64

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Tried to serialize unknown Icon type "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RemoteViews"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    const-wide v0, 0x10900000007L

    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    return-void

    :pswitch_1
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->WEBP_LOSSLESS:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p2, v0, v1, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const-wide v0, 0x10c00000008L

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    return-void

    :pswitch_2
    const-wide v0, 0x10900000006L

    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    return-void

    :pswitch_3
    const-wide v0, 0x10c00000005L

    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getDataBytes()[B

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    return-void

    :pswitch_4
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    const-wide v0, 0x10900000004L

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    return-void

    :pswitch_5
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->WEBP_LOSSLESS:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p2, v0, v1, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const-wide v0, 0x10c00000003L

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist writeLeadingMarginSpanStandardToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/LeadingMarginSpan$Standard;)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/style/LeadingMarginSpan$Standard;->getLeadingMargin(Z)I

    move-result v0

    const-wide v1, 0x10500000001L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/style/LeadingMarginSpan$Standard;->getLeadingMargin(Z)I

    move-result p1

    const-wide v0, 0x10500000002L

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    return-void
.end method

.method public static blacklist writeLineBackgroundSpanStandardToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/LineBackgroundSpan$Standard;)V
    .locals 2

    const-wide v0, 0x10500000001L

    invoke-virtual {p1}, Landroid/text/style/LineBackgroundSpan$Standard;->getColor()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    return-void
.end method

.method public static blacklist writeLineBreakConfigSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/LineBreakConfigSpan;)V
    .locals 3

    invoke-virtual {p1}, Landroid/text/style/LineBreakConfigSpan;->getLineBreakConfig()Landroid/graphics/text/LineBreakConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/text/LineBreakConfig;->getLineBreakStyle()I

    move-result v0

    const-wide v1, 0x10500000001L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1}, Landroid/text/style/LineBreakConfigSpan;->getLineBreakConfig()Landroid/graphics/text/LineBreakConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/text/LineBreakConfig;->getLineBreakWordStyle()I

    move-result v0

    const-wide v1, 0x10500000002L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1}, Landroid/text/style/LineBreakConfigSpan;->getLineBreakConfig()Landroid/graphics/text/LineBreakConfig;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/text/LineBreakConfig;->getHyphenation()I

    move-result p1

    const-wide v0, 0x10500000003L

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    return-void
.end method

.method public static blacklist writeLineHeightSpanStandardToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/LineHeightSpan$Standard;)V
    .locals 2

    const-wide v0, 0x10500000001L

    invoke-virtual {p1}, Landroid/text/style/LineHeightSpan$Standard;->getHeight()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    return-void
.end method

.method public static blacklist writeLocaleSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/LocaleSpan;)V
    .locals 2

    invoke-virtual {p1}, Landroid/text/style/LocaleSpan;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object p1

    const-wide v0, 0x10900000001L

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    return-void
.end method

.method public static blacklist writeQuoteSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/QuoteSpan;)V
    .locals 3

    const-wide v0, 0x10500000001L

    invoke-virtual {p1}, Landroid/text/style/QuoteSpan;->getColor()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000002L

    invoke-virtual {p1}, Landroid/text/style/QuoteSpan;->getStripeWidth()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000003L

    invoke-virtual {p1}, Landroid/text/style/QuoteSpan;->getGapWidth()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    return-void
.end method

.method public static blacklist writeRelativeSizeSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/RelativeSizeSpan;)V
    .locals 2

    const-wide v0, 0x10200000001L

    invoke-virtual {p1}, Landroid/text/style/RelativeSizeSpan;->getSizeChange()F

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    return-void
.end method

.method public static blacklist writeScaleXSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/ScaleXSpan;)V
    .locals 2

    const-wide v0, 0x10200000001L

    invoke-virtual {p1}, Landroid/text/style/ScaleXSpan;->getScaleX()F

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    return-void
.end method

.method public static blacklist writeSpellCheckSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/SpellCheckSpan;)V
    .locals 0

    return-void
.end method

.method public static blacklist writeStrikethroughSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/StrikethroughSpan;)V
    .locals 0

    return-void
.end method

.method public static blacklist writeStyleSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/StyleSpan;)V
    .locals 3

    const-wide v0, 0x10500000001L

    invoke-virtual {p1}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000002L

    invoke-virtual {p1}, Landroid/text/style/StyleSpan;->getFontWeightAdjustment()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    return-void
.end method

.method public static blacklist writeSubscriptSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/SubscriptSpan;)V
    .locals 0

    return-void
.end method

.method public static blacklist writeSuggestionRangeSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/SuggestionRangeSpan;)V
    .locals 2

    const-wide v0, 0x10500000001L

    invoke-virtual {p1}, Landroid/text/style/SuggestionRangeSpan;->getBackgroundColor()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    return-void
.end method

.method public static blacklist writeSuggestionSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/SuggestionSpan;)V
    .locals 6

    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    const-wide v4, 0x20900000001L

    invoke-virtual {p0, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-wide v0, 0x10500000002L

    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10900000003L

    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getLocale()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getLocaleObject()Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getLocaleObject()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    const-wide v1, 0x10900000004L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_1
    const-wide v0, 0x10500000005L

    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->hashCode()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000006L

    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getEasyCorrectUnderlineColor()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10200000007L

    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getEasyCorrectUnderlineThickness()F

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    const-wide v0, 0x10500000008L

    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getMisspelledUnderlineColor()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10200000009L

    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getMisspelledUnderlineThickness()F

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    const-wide v0, 0x1050000000aL

    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getAutoCorrectionUnderlineColor()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x1020000000bL

    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getAutoCorrectionUnderlineThickness()F

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    const-wide v0, 0x1050000000cL

    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getGrammarErrorUnderlineColor()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x1020000000dL

    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getGrammarErrorUnderlineThickness()F

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    return-void
.end method

.method public static blacklist writeSuperscriptSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/SuperscriptSpan;)V
    .locals 0

    return-void
.end method

.method public static blacklist writeTextAppearanceSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/TextAppearanceSpan;)V
    .locals 3

    const-wide v0, 0x10900000001L

    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getFamily()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v0, 0x10500000002L

    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getTextStyle()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000003L

    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getTextSize()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000007L

    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getTextFontWeight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getTextLocales()Landroid/os/LocaleList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getTextLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v0

    const-wide v1, 0x10900000008L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_0
    const-wide v0, 0x10200000009L

    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getShadowRadius()F

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    const-wide v0, 0x1020000000aL

    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getShadowDx()F

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    const-wide v0, 0x1020000000bL

    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getShadowDy()F

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    const-wide v0, 0x1050000000cL

    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getShadowColor()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x1080000000dL

    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->hasElegantTextHeight()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x1080000000eL

    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->isElegantTextHeight()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x1080000000fL

    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->hasLetterSpacing()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10200000010L

    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getLetterSpacing()F

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    const-wide v0, 0x10900000011L

    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getFontFeatureSettings()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v0, 0x10900000012L

    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getFontVariationSettings()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_1

    const-wide v0, 0x10b00000004L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/res/ColorStateList;->writeToProto(Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_1
    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getLinkTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_2

    const-wide v0, 0x10b00000005L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getLinkTextColor()Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/res/ColorStateList;->writeToProto(Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_2
    return-void
.end method

.method public static blacklist writeTtsSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/TtsSpan;)V
    .locals 3

    const-wide v0, 0x10900000001L

    invoke-virtual {p1}, Landroid/text/style/TtsSpan;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {p1}, Landroid/text/style/TtsSpan;->getArgs()Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Landroid/text/style/TtsSpan;->getArgs()Landroid/os/PersistableBundle;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->writeToStream(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    const-wide v0, 0x10900000002L

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    return-void
.end method

.method public static blacklist writeTypefaceSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/TypefaceSpan;)V
    .locals 2

    const-wide v0, 0x10900000001L

    invoke-virtual {p1}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    return-void
.end method

.method public static blacklist writeURLSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/URLSpan;)V
    .locals 2

    const-wide v0, 0x10900000001L

    invoke-virtual {p1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    return-void
.end method

.method public static blacklist writeUnderlineSpanToProto(Landroid/util/proto/ProtoOutputStream;Landroid/text/style/UnderlineSpan;)V
    .locals 0

    return-void
.end method
