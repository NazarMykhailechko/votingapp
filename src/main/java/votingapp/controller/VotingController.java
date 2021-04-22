package votingapp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import votingapp.dao.VotingDao;
import votingapp.model.Voting;

@Controller
public class VotingController {

    @Autowired
    VotingDao votingDao;

    @RequestMapping("/add")
    public String showNewClientPage(Model model) {
        Voting voting = new Voting();
        model.addAttribute("voting", voting);
        return "new_client";
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String saveClient(@ModelAttribute("voting") Voting voting) {
        votingDao.save(voting);
        System.out.println(voting);
        return "redirect:/";
    }

    @RequestMapping("/")
    public String home(Model model) {

        Voting voting = new Voting();
        model.addAttribute("voting", voting);

/*        for (Voting vt : votingDao.findAll()) {
            System.out.print(vt.toString());
        }

        model.addAttribute("listOfQuestions", votingDao.findAll());*/

        return "index";
    }

}
