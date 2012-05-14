package bp

import java.util.Map;

import org.jets3t.service.S3Service
import org.jets3t.service.security.AWSCredentials
import org.jets3t.service.impl.rest.httpclient.RestS3Service
import org.jets3t.service.model.S3Bucket
import org.jets3t.service.model.S3Object
import org.jets3t.service.acl.AccessControlList

class ImageUploadService {
	Map mimeImageExtensionMap = [
		"png" : "image/png",
		"jpg": "image/jpeg",
		"gif": "image/gif",
		"tiff": "image/tiff",
	]
	static String accessKey="AKIAJ54NI7Q6XFRK6TRA"
	static String secretKey="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"
	static RestS3Service s3 = new RestS3Service(new AWSCredentials(accessKey, secretKey))
	boolean transactional = false
	String rootBucketPath="bpfiles"
	String defaultBucketLocation=S3Bucket.LOCATION_US
	
	
	S3Bucket makeBucket(uid) {
		S3Bucket bucket = s3.getOrCreateBucket(rootBucketPath + uid)
		bucket.setAcl AccessControlList.REST_CANNED_PUBLIC_READ
		return bucket
	}

	void put(inputstream, name, uid, ext, length) {
		if (mimeImageExtensionMap.containsKey(ext.toLowerCase())) {
			String mime = mimeImageExtensionMap[ext.toLowerCase()];
			S3Bucket bucket = makeBucket(uid)
			S3Object up = new S3Object()
			up.setAcl AccessControlList.REST_CANNED_PUBLIC_READ
			up.setContentLength length
			up.setContentType mime
			up.setDataInputStream inputstream
			up.setKey name
			up.setBucketName bucket.getName()
			s3.putObject bucket, up
		}
	}}
