.class public Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;
.super Ljava/lang/Object;
.source "RenderTexture_GL_OES.java"


# static fields
.field private static final blacklist A_POSITION:Ljava/lang/String; = "a_Position"

.field private static final blacklist A_TEXTURE_COORDINATES:Ljava/lang/String; = "a_TextureCoordinates"

.field private static final blacklist BLUR_FRAGMENT_SHADER_CODE:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 v_TextureCoord;\nuniform samplerExternalOES u_TextureUnit;\nuniform float fWidth;\nuniform float fHeight;\nvoid main()\t\t\t\t\t\t\t\t\t\t \n        {\n  vec4 lightColor; \t\t\t\t\t\t\t\t \n\thighp vec4 color = vec4(0,0,0,1);\t\t\n\thighp vec2 gaussFilter[7];\t\t\t\t\n\t gaussFilter[0] = vec2(-3.0, 0.1063);\t \n\t gaussFilter[1] = vec2(-2.0, 0.1403);\t \n\t gaussFilter[2] = vec2(-1.0, 0.1658);\t \n\t gaussFilter[3] = vec2(0.0, 0.1752); \n\t gaussFilter[4] = vec2(1.0, 0.1658);\t\n\t gaussFilter[5] = vec2(2.0, 0.1403);\t\n\t gaussFilter[6] = vec2(3.0, 0.1063);\t\n\t\t\t\t\t\t\t\t\t\t\t\t\t\n\tfor( int i = 0; i < 7; i++ )\t\t\n\t\tcolor += texture2D(u_TextureUnit, vec2( v_TextureCoord.x+gaussFilter[i].x*fWidth, v_TextureCoord.y+gaussFilter[i].x*fHeight))*gaussFilter[i].y;\t\t\n  gl_FragColor = color ;\t\n}\n"

.field private static final blacklist FLOAT_SIZE_BYTES:I = 0x4

.field public static final blacklist PREPARE_FAILURE:I = 0x0

.field public static final blacklist PREPARE_SUCCESS:I = 0x1

.field private static final blacklist TEXTURE_FRAGMENT_SHADER_CODE:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 v_TextureCoord;\nuniform samplerExternalOES u_TextureUnit;\nvoid main() {\n  gl_FragColor = texture2D(u_TextureUnit, v_TextureCoord);\n}\n"

.field private static final blacklist TEXTURE_VERTEX_SHADER_CODE:Ljava/lang/String; = "uniform mat4 u_MVPMatrix;\nuniform mat4 u_STMatrix;\nattribute vec4 a_Position;\nattribute vec4 a_TextureCoordinates;\nvarying vec2 v_TextureCoord;\nvoid main() {\n  gl_Position = u_MVPMatrix * a_Position;\n  v_TextureCoord = (u_STMatrix * a_TextureCoordinates).xy;\n}\n"

.field private static final blacklist U_FRMAE_HEIGHT:Ljava/lang/String; = "fHegiht"

.field private static final blacklist U_FRMAE_WIDTH:Ljava/lang/String; = "fWidth"

.field private static final blacklist U_MVPMATRIX:Ljava/lang/String; = "u_MVPMatrix"

.field private static final blacklist U_STMATRIX:Ljava/lang/String; = "u_STMatrix"

.field private static final blacklist U_TEXTURE_UNIT:Ljava/lang/String; = "u_TextureUnit"

.field private static final blacklist VERTICES_DATA_POS_COUNT:I = 0x2

.field private static final blacklist VERTICES_DATA_POS_OFFSET:I = 0x0

.field private static final blacklist VERTICES_DATA_STRIDE_BYTES:I = 0x10

.field private static final blacklist VERTICES_DATA_TEX_COORD_COUNT:I = 0x2

.field private static final blacklist VERTICES_DATA_TEX_COORD_OFFSET:I = 0x2


# instance fields
.field private blacklist mCallFinish:Z

.field private blacklist mHeight:F

.field private blacklist mMMSMode:Z

.field private final blacklist mMVPMatrix:[F

.field private blacklist mProgram:I

.field private final blacklist mSTMatrix:[F

.field private blacklist mTextureId:I

.field private final blacklist mVerticesData:[F

.field private blacklist mVerticesFloatBuffer:Ljava/nio/FloatBuffer;

.field private blacklist mWidth:F

.field private blacklist ma_PositionHandle:I

.field private blacklist ma_TextureCoordinatesHandle:I

.field private blacklist mu_FheightHandle:I

.field private blacklist mu_FwidthHandle:I

.field private blacklist mu_MVPMatrixHandle:I

.field private blacklist mu_STMatrixHandle:I

.field private blacklist mu_TextureUnitHandle:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mVerticesData:[F

    new-array v2, v0, [F

    iput-object v2, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mMVPMatrix:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mSTMatrix:[F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mMMSMode:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mCallFinish:Z

    array-length v2, v1

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mVerticesFloatBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private blacklist checkcallFinish()Z
    .locals 3

    const-string/jumbo p0, "ro.product.board"

    invoke-static {p0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "exynos"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "checkcallFinish  chipName :"

    const-string v2, "TranscodeLib"

    if-nez v0, :cond_1

    const-string/jumbo v0, "s5e"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", return true"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", return false"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private blacklist deleteTexture()V
    .locals 2

    const v0, 0x8d65

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mTextureId:I

    invoke-static {v0}, Lcom/samsung/android/transcode/util/OpenGlHelper;->deleteTexture(I)V

    iput v1, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mTextureId:I

    return-void
.end method


# virtual methods
.method public blacklist createProgram(Z)I
    .locals 1

    const-string/jumbo v0, "uniform mat4 u_MVPMatrix;\nuniform mat4 u_STMatrix;\nattribute vec4 a_Position;\nattribute vec4 a_TextureCoordinates;\nvarying vec2 v_TextureCoord;\nvoid main() {\n  gl_Position = u_MVPMatrix * a_Position;\n  v_TextureCoord = (u_STMatrix * a_TextureCoordinates).xy;\n}\n"

    if-eqz p1, :cond_0

    const-string p1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 v_TextureCoord;\nuniform samplerExternalOES u_TextureUnit;\nuniform float fWidth;\nuniform float fHeight;\nvoid main()\t\t\t\t\t\t\t\t\t\t \n        {\n  vec4 lightColor; \t\t\t\t\t\t\t\t \n\thighp vec4 color = vec4(0,0,0,1);\t\t\n\thighp vec2 gaussFilter[7];\t\t\t\t\n\t gaussFilter[0] = vec2(-3.0, 0.1063);\t \n\t gaussFilter[1] = vec2(-2.0, 0.1403);\t \n\t gaussFilter[2] = vec2(-1.0, 0.1658);\t \n\t gaussFilter[3] = vec2(0.0, 0.1752); \n\t gaussFilter[4] = vec2(1.0, 0.1658);\t\n\t gaussFilter[5] = vec2(2.0, 0.1403);\t\n\t gaussFilter[6] = vec2(3.0, 0.1063);\t\n\t\t\t\t\t\t\t\t\t\t\t\t\t\n\tfor( int i = 0; i < 7; i++ )\t\t\n\t\tcolor += texture2D(u_TextureUnit, vec2( v_TextureCoord.x+gaussFilter[i].x*fWidth, v_TextureCoord.y+gaussFilter[i].x*fHeight))*gaussFilter[i].y;\t\t\n  gl_FragColor = color ;\t\n}\n"

    invoke-static {v0, p1}, Lcom/samsung/android/transcode/util/OpenGlHelper;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mProgram:I

    goto :goto_0

    :cond_0
    const-string p1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 v_TextureCoord;\nuniform samplerExternalOES u_TextureUnit;\nvoid main() {\n  gl_FragColor = texture2D(u_TextureUnit, v_TextureCoord);\n}\n"

    invoke-static {v0, p1}, Lcom/samsung/android/transcode/util/OpenGlHelper;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mProgram:I

    :goto_0
    iget p1, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mProgram:I

    if-nez p1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const-string/jumbo v0, "u_MVPMatrix"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mu_MVPMatrixHandle:I

    iget p1, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mProgram:I

    const-string/jumbo v0, "u_STMatrix"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mu_STMatrixHandle:I

    iget p1, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mProgram:I

    const-string v0, "a_Position"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->ma_PositionHandle:I

    iget p1, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mProgram:I

    const-string v0, "a_TextureCoordinates"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->ma_TextureCoordinatesHandle:I

    iget p1, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mProgram:I

    const-string/jumbo v0, "u_TextureUnit"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mu_TextureUnitHandle:I

    const/4 p0, 0x1

    return p0
.end method

.method public blacklist draw(Landroid/graphics/SurfaceTexture;)V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mSTMatrix:[F

    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    iget p1, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mProgram:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const p1, 0x84c0

    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const p1, 0x8d65

    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mTextureId:I

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget p1, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mu_MVPMatrixHandle:I

    iget-object v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mMVPMatrix:[F

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget p1, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mu_STMatrixHandle:I

    iget-object v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mSTMatrix:[F

    invoke-static {p1, v1, v2, v0, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget p1, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mu_TextureUnitHandle:I

    invoke-static {p1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget-boolean p1, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mMMSMode:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mu_FwidthHandle:I

    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mWidth:F

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget p1, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mu_FheightHandle:I

    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mHeight:F

    div-float/2addr v1, v0

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mVerticesFloatBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v3, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->ma_PositionHandle:I

    const/16 v7, 0x10

    iget-object v8, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mVerticesFloatBuffer:Ljava/nio/FloatBuffer;

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget p1, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->ma_PositionHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string p1, "glEnableVertexAttribArray ma_PositionHandle"

    invoke-static {p1}, Lcom/samsung/android/transcode/util/OpenGlHelper;->checkGLError(Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mVerticesFloatBuffer:Ljava/nio/FloatBuffer;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v3, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->ma_TextureCoordinatesHandle:I

    iget-object v8, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mVerticesFloatBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget p1, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->ma_TextureCoordinatesHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string p1, "glEnableVertexAttribArray ma_TextureCoordinatesHandle"

    invoke-static {p1}, Lcom/samsung/android/transcode/util/OpenGlHelper;->checkGLError(Ljava/lang/String;)I

    const/16 p1, 0xbe2

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 p1, 0x302

    const/16 v0, 0x303

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/4 p1, 0x5

    const/4 v0, 0x4

    invoke-static {p1, v2, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget-boolean p0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mCallFinish:Z

    if-eqz p0, :cond_1

    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    :cond_1
    return-void
.end method

.method public blacklist getTextureId()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mTextureId:I

    return p0
.end method

.method public blacklist loadTexture(I)I
    .locals 8

    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mTextureId:I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->deleteTexture()V

    :cond_0
    invoke-static {}, Lcom/samsung/android/transcode/util/OpenGlHelper;->loadTextureOES()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mTextureId:I

    if-nez v0, :cond_1

    const-string v0, "TranscodeLib"

    const-string/jumbo v1, "not able to load new texture"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mMVPMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v2, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mMVPMatrix:[F

    int-to-float v4, p1

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    iget p0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mTextureId:I

    return p0
.end method

.method public blacklist prepare(I)I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->createProgram(Z)I

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->loadTexture(I)I

    const/4 p0, 0x0

    invoke-static {p0, p0, p0, p0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/4 p0, 0x1

    return p0
.end method

.method public blacklist prepare(IIIIIIIZII)I
    .locals 1

    iput-boolean p8, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mMMSMode:Z

    invoke-direct {p0}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->checkcallFinish()Z

    move-result p8

    iput-boolean p8, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mCallFinish:Z

    iget-boolean p8, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mMMSMode:Z

    invoke-virtual {p0, p8}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->createProgram(Z)I

    move-result p8

    if-nez p8, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p8, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mMMSMode:Z

    if-eqz p8, :cond_1

    iget p8, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mProgram:I

    const-string v0, "fWidth"

    invoke-static {p8, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p8

    iput p8, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mu_FwidthHandle:I

    iget p8, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mProgram:I

    const-string v0, "fHegiht"

    invoke-static {p8, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p8

    iput p8, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mu_FheightHandle:I

    int-to-float p6, p6

    iput p6, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mWidth:F

    int-to-float p6, p7

    iput p6, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mHeight:F

    if-eqz p9, :cond_1

    if-eqz p10, :cond_1

    int-to-float p6, p9

    iput p6, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mWidth:F

    int-to-float p6, p10

    iput p6, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mHeight:F

    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->loadTexture(I)I

    const/4 p0, 0x0

    invoke-static {p0, p0, p0, p0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    invoke-static {p2, p3, p4, p5}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/4 p0, 0x1

    return p0
.end method

.method public blacklist release()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->deleteTexture()V

    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mProgram:I

    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mu_MVPMatrixHandle:I

    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mu_STMatrixHandle:I

    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->ma_PositionHandle:I

    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->ma_TextureCoordinatesHandle:I

    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mu_TextureUnitHandle:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mVerticesFloatBuffer:Ljava/nio/FloatBuffer;

    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mu_FwidthHandle:I

    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mu_FheightHandle:I

    iput-boolean v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mMMSMode:Z

    return-void
.end method
