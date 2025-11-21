.class Lcom/android/internal/util/CharSequences$1;
.super Ljava/lang/Object;
.source "CharSequences.java"

# interfaces
.implements Ljava/lang/CharSequence;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/util/CharSequences;->forAsciiBytes([B)Ljava/lang/CharSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$bytes:[B


# direct methods
.method constructor blacklist <init>([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/util/CharSequences$1;->val$bytes:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api charAt(I)C
    .locals 0

    iget-object p0, p0, Lcom/android/internal/util/CharSequences$1;->val$bytes:[B

    aget-byte p0, p0, p1

    int-to-char p0, p0

    return p0
.end method

.method public whitelist test-api length()I
    .locals 0

    iget-object p0, p0, Lcom/android/internal/util/CharSequences$1;->val$bytes:[B

    array-length p0, p0

    return p0
.end method

.method public whitelist test-api subSequence(II)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/util/CharSequences$1;->val$bytes:[B

    invoke-static {p0, p1, p2}, Lcom/android/internal/util/CharSequences;->forAsciiBytes([BII)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/internal/util/CharSequences$1;->val$bytes:[B

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method
