package front.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import front.dao.SelectDao;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import front.dao.util.PageUtil;
import front.entity.GeneId;
import front.entity.Member;
import front.entity.New;

@Controller
public class MainController {
    @Resource(name = "SelectDao")
    private SelectDao selectDao;

    @RequestMapping(value = "/index.do")
    public ModelAndView index(HttpServletRequest request) {
        PageUtil pageUtil = new PageUtil();
        pageUtil.setPageSize(5);
        int currentPage = 1;
        if (request.getParameter("currentPage") != null) {
            currentPage = Integer.parseInt(request.getParameter("currentPage"));
        }
        pageUtil.setCurrentPage(currentPage);
        pageUtil.setTotalCount(selectDao.count("news"));
        List<New> news = selectDao.selectAllNews(pageUtil);
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("newList", news);
        map.put("page", pageUtil);
        return new ModelAndView("index", map);
    }

    @RequestMapping(value = "/JutePost.do")
    public ModelAndView jutePost(HttpServletRequest request) {
        PageUtil pageUtil = new PageUtil();
        pageUtil.setPageSize(3);
        int currentPage = 1;
        if (request.getParameter("currentPage") != null) {
            currentPage = Integer.parseInt(request.getParameter("currentPage"));
        }
        pageUtil.setCurrentPage(currentPage);
        String id = request.getParameter("id");
        String selectId = request.getParameter("JuteSelect");
        List<GeneId> genes = null;
        if (Integer.parseInt(selectId) == 0) {
            pageUtil.setTotalCount(selectDao.countSelect("cc_genes", id));
            genes = selectDao.getCcGenesByLikeId(id, pageUtil);
        } else {
            pageUtil.setTotalCount(selectDao.countSelect("co_genes", id));
            genes = selectDao.getCoGenesByLikeId(id, pageUtil);
        }

        Map<String, Object> map = new HashMap<String, Object>();
        map.put("geneList", genes);
        map.put("id", id);
        map.put("page", pageUtil);
        map.put("JuteSelect", selectId);
        return new ModelAndView("JutePost", map);
    }

    @RequestMapping(value = "/KenafPost.do")
    public ModelAndView kenafPost(HttpServletRequest request) {
        PageUtil pageUtil = new PageUtil();
        pageUtil.setPageSize(3);
        int currentPage = 1;
        if (request.getParameter("currentPage") != null) {
            currentPage = Integer.parseInt(request.getParameter("currentPage"));
        }
        pageUtil.setCurrentPage(currentPage);
        String id = request.getParameter("id");
        pageUtil.setTotalCount(selectDao.countSelect("co_genes", id));
        List<GeneId> genes = selectDao.getHcaGenesByLikeId(id, pageUtil);
        //System.out.println(genes.get(0).getGene());
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("geneList", genes);
        map.put("page", pageUtil);
        map.put("id", id);
        return new ModelAndView("KenafPost", map);
    }

    @RequestMapping(value = "/Hemp.do")
    public String Hemp(HttpServletRequest request) {
        return "Hemp";
    }

    @RequestMapping(value = "/Jute.do")
    public String Jute(HttpServletRequest request) {
        return "Jute";
    }

    @RequestMapping(value = "/Kenaf.do")
    public String Kenaf(HttpServletRequest request) {
        return "Kenaf";
    }

    /*	@RequestMapping(value="/Genomebrowse_2_snp.do")
        public ModelAndView genomebrowse_snp(HttpServletRequest request)
        {
            PageUtil pageUtil = new PageUtil();
            pageUtil.setPageSize(1);
            int currentPage = 1;
            pageUtil.setCurrentPage(currentPage);
            pageUtil.setTotalCount(1);
            String id = request.getParameter("snp_id");
            List<Gene> genes = selectDao.selectGeneForSnp_id(id);
            Map<String, Object> map = new HashMap<String, Object>();
            map.put("geneList", genes);
            map.put("page", pageUtil);
            return new ModelAndView("Genomebrowse_2", map);
        }
        */
	/*	@RequestMapping(value="/Genomebrowse_2_chrom.do")
	public ModelAndView genomebrowse_chrom(HttpServletRequest request)
	{
		PageUtil pageUtil = new PageUtil();
		pageUtil.setPageSize(10);
		int currentPage = 1;
		if(request.getParameter("currentPage") != null)
		{
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		pageUtil.setCurrentPage(currentPage);
		pageUtil.setTotalCount(selectDao.count("genes"));
		String chrom = request.getParameter("chrom");	
		List<Gene> genes = selectDao.selectGeneForChrom(chrom, pageUtil);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("geneList", genes);
		map.put("page", pageUtil);
		return new ModelAndView("Genomebrowse_2", map);
	}
	*/
    @RequestMapping(value = "/Download.do")
    public ModelAndView download() {
        ArrayList<String> arrayList = new ArrayList<String>();
        arrayList.add("麻类生产的基本情况");
        arrayList.add("麻类生产面临的主要问题与建议");
        arrayList.add("发展麻类生产的建议");
        arrayList.add("China to develop micro rockets");
        arrayList.add("According to the China");
        Map<String, ArrayList<String>> map = new HashMap<String, ArrayList<String>>();
        map.put("downloadList", arrayList);
        return new ModelAndView("Download", map);
    }

    @RequestMapping(value = "/Germplasm.do")
    public ModelAndView germplasm() {
        ArrayList<String> arrayList = new ArrayList<String>();
        arrayList.add("黄麻");
        arrayList.add("红麻");
        arrayList.add("亚麻");
        arrayList.add("苎麻");
        arrayList.add("剑麻");
        Map<String, ArrayList<String>> map = new HashMap<String, ArrayList<String>>();
        map.put("germplasmList", arrayList);
        return new ModelAndView("Germplasm", map);
    }

    @RequestMapping(value = "/About_Us.do")
    public ModelAndView about_Us(HttpServletRequest request) {
        PageUtil pageUtil = new PageUtil();
        pageUtil.setPageSize(15);
        int currentPage = 1;
        if (request.getParameter("currentPage") != null) {
            currentPage = Integer.parseInt(request.getParameter("currentPage"));
        }
        pageUtil.setCurrentPage(currentPage);
        pageUtil.setTotalCount(selectDao.count("members"));
        List<Member> members = selectDao.selectAllMembers(pageUtil);
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("peopleList", members);
        map.put("page", pageUtil);
        return new ModelAndView("About_Us", map);
    }
}
